# 69mike.com

Personal Hugo blog source for `69mike.com`.

The site is built with Hugo and the PaperMod theme. The repository is intended to keep source content, configuration, custom shortcodes, and workflow documentation under version control. Generated output in `public/` is build artifact, not source.

## Project Layout

- `content/`: pages and blog posts.
- `content/bookshelf.md`: bookshelf data and page content.
- `layouts/`: local shortcode and partial overrides.
- `static/`: images, CSS, JavaScript, files, and favicons copied directly into the site.
- `docs/website-workflow.md`: personal workflow notes, archive point, publishing plan, and maintenance backlog.
- `.github/workflows/deploy.yml`: optional GitHub Pages deployment workflow.
- `AGENTS.md`: shared instructions for Codex, Claude Code, and other AI agents.

## Local Development

Install Hugo Extended, then preview locally:

```bash
hugo server --bind 127.0.0.1 --port 1313 --baseURL http://127.0.0.1:1313/ --disableFastRender
```

Build the production site:

```bash
hugo --minify --cleanDestinationDir
```

The local preview is available at:

```text
http://127.0.0.1:1313/
```

## Content Workflow

Create a new post:

```bash
hugo new content/posts/YYYY-MM-DD-short-title.md
```

Before publishing a post:

- Set `draft: false`.
- Keep tags and categories useful and simple.
- Use real image paths only.
- Avoid placeholder front matter copied from templates.

## Bookshelf Workflow

Bookshelf entries live in `content/bookshelf.md` under `books:`.

Each year should have one data block, for example `2019:`. Do not split a year into `20191`, `20192`, and similar manual groups. The bookshelf JavaScript automatically creates responsive shelf rows based on screen width.

The 3D book styling lives in `static/css/bookshelf.css` and `static/js/bookshelf.js`.

## Publishing

The current live deployment target is the VPS serving `69mike.com`:

- SSH host: `mikee@67.209.179.214`
- SSH key: `~/.ssh/agent/69mike_vps_deploy_ed25519`
- Web root: `/var/www/blog`
- Nginx config: `/etc/nginx/sites-enabled/69mike.com`

Build locally, package `public/`, upload it with the deploy key, back up `/var/www/blog`, then replace the web root.

For the normal VPS deploy path, run:

```bash
./scripts/deploy-vps.sh
```

GitHub Pages is configured as an optional workflow-based deployment path, but the domain DNS currently points to the VPS, not GitHub Pages.

The normal publishing path is:

1. Edit source files on a branch.
2. Run a local Hugo build.
3. Commit and push.
4. Build `public/`.
5. Deploy `public/` to the VPS web root.

GitHub Pages is configured with source set to GitHub Actions. The custom domain is set to `69mike.com`, but DNS currently remains on the VPS.

The custom domain is also kept in `static/CNAME`, so Hugo copies it into the artifact if GitHub Pages is used later.

## Archive

The live-matching archive from 2026-07-06 is recorded in `docs/website-workflow.md`.

Current restore references:

- Archive branch: `archive/john-copy-2026-07-06`
- Archive tag: `john-copy-online-2026-07-06`
