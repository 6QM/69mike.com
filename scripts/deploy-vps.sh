#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SSH_KEY="${SSH_KEY:-$HOME/.ssh/agent/69mike_vps_deploy_ed25519}"
DEPLOY_REMOTE="${DEPLOY_REMOTE:-mikee@67.209.179.214}"
DEPLOY_WEB_ROOT="${DEPLOY_WEB_ROOT:-/var/www/blog}"
REMOTE_ARCHIVE="${REMOTE_ARCHIVE:-/home/mikee/69mike-deploy.tar.gz}"

cd "$ROOT_DIR"

if [[ ! -f "$SSH_KEY" ]]; then
  echo "Missing SSH key: $SSH_KEY" >&2
  exit 1
fi

hugo --minify --cleanDestinationDir
find public \( -name ".DS_Store" -o -name "._*" \) -delete

archive="$(mktemp -t 69mike-deploy.XXXXXX.tar.gz)"
trap 'rm -f "$archive"' EXIT

COPYFILE_DISABLE=1 tar --no-xattrs -C public -czf "$archive" .
scp -i "$SSH_KEY" "$archive" "$DEPLOY_REMOTE:$REMOTE_ARCHIVE"

ssh -i "$SSH_KEY" "$DEPLOY_REMOTE" "bash -s" <<REMOTE_SCRIPT
set -euo pipefail

deploy="$REMOTE_ARCHIVE"
web_root="$DEPLOY_WEB_ROOT"
backup="/var/www/backups/blog-\$(date -u +%Y%m%d-%H%M%S)"
staging="\$(mktemp -d /home/mikee/69mike-staging.XXXXXX)"
replacement_started=0

cleanup() {
  rm -rf -- "\$staging"
  rm -f -- "\$deploy"
}

rollback_on_error() {
  status=\$?
  if [[ \$status -ne 0 && \$replacement_started -eq 1 && -d "\$backup" ]]; then
    echo "Deployment failed; restoring \$backup" >&2
    find "\$web_root" -mindepth 1 -maxdepth 1 -exec rm -rf -- {} +
    tar -C "\$backup" -cf - . | tar -C "\$web_root" -xf -
  fi
  cleanup
  exit "\$status"
}

trap rollback_on_error EXIT

test -s "\$deploy"
test -d "\$web_root"
test -w "\$web_root"
test -w /var/www/backups
tar -C "\$staging" -xzf "\$deploy"
test -s "\$staging/index.html"
mkdir -p "\$backup"
tar -C "\$web_root" -cf - . | tar -C "\$backup" -xf -
replacement_started=1
find "\$web_root" -mindepth 1 -maxdepth 1 -exec rm -rf -- {} +
tar -C "\$staging" -cf - . | tar -C "\$web_root" -xf -
test -s "\$web_root/index.html"
find "\$web_root" \( -name ".DS_Store" -o -name "._*" \) -delete
find "\$web_root" -type d -exec chmod 755 {} +
find "\$web_root" -type f -exec chmod 644 {} +
replacement_started=0

printf "backup=%s\\n" "\$backup"
printf "files="
find "\$web_root" -type f | wc -l
trap - EXIT
cleanup
REMOTE_SCRIPT

curl -fsSI https://69mike.com/ >/dev/null
curl -fsSI https://69mike.com/bookshelf/ >/dev/null
echo "Deployed and verified https://69mike.com/"
