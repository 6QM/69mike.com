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

test -s "\$deploy"
test -d "\$web_root"
test -w "\$web_root"
test -w /var/www/backups
mkdir -p "\$backup"
tar -C "\$web_root" -cf - . | tar -C "\$backup" -xf -
find "\$web_root" -mindepth 1 -maxdepth 1 -exec rm -rf -- {} +
tar -C "\$web_root" -xzf "\$deploy"
find "\$web_root" \( -name ".DS_Store" -o -name "._*" \) -delete
find "\$web_root" -type d -exec chmod 755 {} +
find "\$web_root" -type f -exec chmod 644 {} +
rm -f "\$deploy"

printf "backup=%s\\n" "\$backup"
printf "files="
find "\$web_root" -type f | wc -l
REMOTE_SCRIPT

curl -fsSI https://69mike.com/ >/dev/null
curl -fsSI https://69mike.com/bookshelf/ >/dev/null
echo "Deployed and verified https://69mike.com/"
