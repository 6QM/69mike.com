# 69mike.com Personal Website Workflow

This document is for personal use. It records the current archive point, the editing and publishing workflow, and the first cleanup backlog for `69mike.com`.

## 1. Baseline Archive

- Source directory: `/Users/liuqiaomai/Library/CloudStorage/OneDrive-Personal/00_To_Do/D_Application/Blog/John/John - Copy`
- GitHub repository: `https://github.com/6QM/69mike.com`
- Archive commit: `2bca5a2057ed442b2731e325966d635d6d773f67`
- Archive branch: `archive/john-copy-2026-07-06`
- Archive tag: `john-copy-online-2026-07-06`
- Working branch created from archive: `codex/website-workflow-foundation`

The archive branch and tag should be treated as the restore point for the version that matched the live site on 2026-07-06.

## 2. Branch Workflow

Use the archive point as the known-good baseline. New work should happen on short-lived branches.

```bash
git fetch origin
git switch -c codex/some-specific-task john-copy-online-2026-07-06
```

For regular website work after the source branch is established:

```bash
git switch master
git pull
git switch -c codex/some-specific-task
```

Recommended branch naming:

- `codex/write-article-topic`
- `codex/fix-site-config`
- `codex/update-theme`
- `codex/publish-workflow`

Before asking Codex or another coding agent to edit the site, run:

```bash
git status --short --branch
```

If there are local changes, either commit them first or clearly tell the agent they are intentional.

## 3. Writing Workflow

Create a post:

```bash
hugo new content/posts/YYYY-MM-DD-short-title.md
```

Then edit front matter:

- `title`: human-readable title.
- `date`: keep the generated timestamp or set the intended publish date.
- `draft`: `true` while drafting, `false` when ready.
- `tags`: useful topic tags.
- `categories`: broad category, if needed.
- `comments`: usually `false`; set `true` only when comments are desired.
- `cover`: use only when there is a real image path or URL.

Preview locally:

```bash
hugo server -D
```

Build for production:

```bash
hugo --minify
```

Content rule of thumb:

- Keep real article content in `content/posts/`.
- Keep static files in `static/files/`.
- Keep images in `static/images/` or `content/images/`, then reference them with a stable site path.
- Avoid placeholder values copied from templates.

## 4. Publish Workflow

The current live publishing target is the VPS behind `69mike.com`.

- SSH host: `mikee@67.209.179.214`
- SSH key: `~/.ssh/agent/69mike_vps_deploy_ed25519`
- Web root: `/var/www/blog`
- Nginx config: `/etc/nginx/sites-enabled/69mike.com`
- Latest deployment backup from this session: `/var/www/backups/blog-final-20260706-175334`

The live VPS flow is:

1. Edit content or site files on a working branch.
2. Run a local preview/build.
3. Commit changes.
4. Push branch to GitHub.
5. Deploy with `./scripts/deploy-vps.sh`.

The deploy script builds the site, packages `public/`, uploads the artifact with the deploy key, backs up `/var/www/blog`, replaces the web root, and verifies `https://69mike.com/`.

If deploying manually, build the site with `hugo --minify --cleanDestinationDir`, package `public/` with `COPYFILE_DISABLE=1 tar`, upload the archive to the VPS, back up `/var/www/blog`, replace the web root, and verify `https://69mike.com/` plus key pages such as `/bookshelf/`.

Before packaging, remove `.DS_Store` and `._*` files from `public/`.

GitHub Pages is also configured as an optional workflow-based path:

Workflow file: `.github/workflows/deploy.yml`

The workflow runs on pushes to `master` or `main`, and can also be started manually from the GitHub Actions tab.

The GitHub Actions workflow builds the site from source. `public/` is a generated artifact and should not be manually edited or reviewed as source content.

GitHub Pages is configured to use GitHub Actions as the build source. The custom domain is set to `69mike.com` and is also recorded in `static/CNAME`, so the generated artifact includes a root `CNAME` file.

On 2026-07-07, `69mike.com` resolves to `67.209.179.214`, the VPS. Before switching live traffic to GitHub Pages, update DNS records for the apex domain to GitHub Pages and then enable HTTPS enforcement after the certificate is ready.

## 5. Rollback Workflow

To inspect or restore the archived live-matching version:

```bash
git switch archive/john-copy-2026-07-06
```

To create a new branch from the archived version:

```bash
git switch -c codex/recovery-from-archive john-copy-online-2026-07-06
```

If a future deployment breaks the site, use GitHub Pages deployment history first. If the source itself needs rollback, revert the problematic commit instead of rewriting history.

## 6. Recorded Issues

These were the main issues found during the first audit:

1. GitHub default branch was old content; the latest live-matching source was preserved separately on the archive branch and tag.
2. No GitHub Actions workflow existed for build or deploy.
3. GitHub Pages was not configured in the repository.
4. Local machine did not have `hugo` available, so local build verification was not ready.
5. Source and generated `public/` output were both tracked, making the repository larger and diffs noisier. Resolved by ignoring `public/` and relying on GitHub Actions to build the artifact.
6. `hugo.yml` contained invalid placeholder values for Google Analytics, Open Graph images, favicons, and site verification tags. The active placeholders were removed; keep config values real.
7. Many content files had placeholder `canonicalURL` values that generated bad canonical links. Resolved in the cleanup branch.
8. Many content files had placeholder cover image values copied from the template, creating broken image URLs. Resolved in the cleanup branch.
9. Some cover image URLs were wrapped in angle brackets, which generated invalid output. Resolved in the cleanup branch.
10. The comments partial hardcoded a different utterances theme than the main config. Resolved by reading values from `hugo.yml`.

## 7. Project Documents

- `README.md`: quick project overview for personal use and future collaborators.
- `AGENTS.md`: shared instructions for Codex, Claude Code, and other AI agents.
- `docs/website-workflow.md`: longer workflow and archive notes.

Do not create separate `CLAUDE.md` or `CODEX.md` files. Keep agent-facing instructions in `AGENTS.md`.

## 8. Privacy Note

The GitHub repository is public. Files under `static/files/` and other personal documents in the repository should be reviewed before relying on GitHub as the long-term publishing source.

## 9. Agent Prompt Template

Use a prompt like this for future Codex or Claude Code sessions:

```text
This is my Hugo personal blog source for 69mike.com.
Please first read README.md, AGENTS.md, and docs/website-workflow.md, check git status, and summarize what you plan to change.
Do not edit unrelated files. Preserve my content voice. Run a Hugo build before finishing if possible.
```
