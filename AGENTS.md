# Agent Instructions

This file is the shared agent guide for Codex, Claude Code, and other AI coding agents. Do not create separate `CLAUDE.md` or `CODEX.md` files; keep common project guidance here.

## First Steps

1. Read `README.md`.
2. Read `docs/website-workflow.md`.
3. Run `git status --short --branch`.
4. Identify whether local changes are user work, generated output, or your own edits.

Do not overwrite or revert user changes unless the user explicitly asks.

If a change modifies the author workflow, content structure, Git process, deployment target, or rollback process, update `docs/website-workflow.md` in the same task.

## Stack

- Static site generator: Hugo Extended.
- Theme: PaperMod.
- Main config: `hugo.yml`.
- Local overrides: `layouts/`.
- Static assets: `static/`.
- Generated output: `public/`.

`public/` is a generated build artifact. Do not manually edit it as source.

## Commands

Preview locally:

```bash
hugo server --bind 127.0.0.1 --port 1313 --baseURL http://127.0.0.1:1313/ --disableFastRender --renderToMemory
```

Build before finishing meaningful site changes:

```bash
hugo --minify --cleanDestinationDir
```

Check the Git state:

```bash
git status --short --branch
```

## Editing Rules

- Keep content voice intact.
- Keep edits scoped to the requested task.
- Prefer source files over generated output.
- Avoid changing files under `themes/` unless the task is specifically about theme internals.
- Do not add placeholder values to front matter or config.
- Do not commit `.DS_Store`, `.hugo_build.lock`, IDE folders, or generated cache files.

## Bookshelf Rules

Bookshelf content is maintained in `content/bookshelf.md`.

- Use one `books:` key per year, such as `2019:`.
- Do not manually split a year into `20191`, `20192`, etc.
- The responsive shelf layout is handled by `static/js/bookshelf.js`.
- The visual shelf and 3D book styling is handled by `static/css/bookshelf.css`.
- Preserve the original 3D book structure unless the user explicitly asks to redesign it.

## Project And Series Rules

- Keep all essays in `content/posts/`; do not create separate manually maintained post stores for individual projects.
- Use `series` for a long-running project identity, such as `The Worker Investor` or `Human Capital ETF`.
- Use `tags` for reusable subjects within an essay, such as `work`, `ownership`, `AI`, or `compounding`.
- Keep broad content type in `categories`, normally `Essay` for project writing.
- Maintain stable project descriptions and links in `data/projects.yaml`.
- Maintain each series introduction once in `content/series/<series-slug>/_index.md`.
- Project pages must not be added to `params.mainSections`; only posts belong in the homepage article stream.

## Publishing Rules

The current live publishing target is the VPS, not GitHub Pages.

- SSH host: `mikee@67.209.179.214`
- SSH key: `~/.ssh/agent/69mike_vps_deploy_ed25519`
- Web root: `/var/www/blog`
- Nginx config: `/etc/nginx/sites-enabled/69mike.com`

For VPS deployment:

Prefer running:

```bash
./scripts/deploy-vps.sh
```

The script builds Hugo, removes macOS metadata, packages with `COPYFILE_DISABLE=1 tar`, uploads with the deploy key, backs up `/var/www/blog`, replaces the web root, and verifies `https://69mike.com/`.

If deploying manually:

1. Run `hugo --minify --cleanDestinationDir`.
2. Remove macOS metadata from `public/` before packaging.
3. Package with `COPYFILE_DISABLE=1 tar` so `._*` AppleDouble files are not uploaded.
4. Upload the archive using the deploy key.
5. Back up `/var/www/blog` on the VPS before replacing it.
6. Replace `/var/www/blog` with the new build and verify `https://69mike.com/`.

GitHub Pages through `.github/workflows/deploy.yml` is available as an optional future path. Do not assume it is the live target unless DNS has moved away from the VPS.

## Completion Checklist

Before final response:

- Run a Hugo build when site behavior changed.
- Mention any warnings that remain.
- Report files changed and whether changes were committed.
- Leave the working tree state clear or explicitly explain remaining uncommitted work.
