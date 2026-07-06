# 69mike.com

Personal Hugo blog source for `69mike.com`.

The site is built with Hugo and the PaperMod theme. The repository is intended to keep source content, configuration, custom shortcodes, and workflow documentation under version control. Generated output in `public/` is build artifact, not source.

## Project Layout

- `content/`: pages and blog posts.
- `content/bookshelf.md`: bookshelf data and page content.
- `layouts/`: local shortcode and partial overrides.
- `static/`: images, CSS, JavaScript, files, and favicons copied directly into the site.
- `docs/website-workflow.md`: personal workflow notes, archive point, publishing plan, and maintenance backlog.
- `.github/workflows/deploy.yml`: GitHub Pages deployment workflow.
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

The intended publishing path is GitHub Pages through GitHub Actions:

1. Edit source files on a branch.
2. Run a local Hugo build.
3. Commit and push.
4. Merge into `master` or `main`.
5. GitHub Actions builds the site and uploads the generated `public/` artifact.

GitHub Pages is configured with source set to GitHub Actions. The custom domain is set to `69mike.com`, but DNS still needs to point to GitHub Pages before the domain can serve the GitHub-built site.

The custom domain is also kept in `static/CNAME`, so Hugo copies it into the deployed artifact.

## Archive

The live-matching archive from 2026-07-06 is recorded in `docs/website-workflow.md`.

Current restore references:

- Archive branch: `archive/john-copy-2026-07-06`
- Archive tag: `john-copy-online-2026-07-06`
