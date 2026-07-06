# Agent Instructions

This file is the shared agent guide for Codex, Claude Code, and other AI coding agents. Do not create separate `CLAUDE.md` or `CODEX.md` files; keep common project guidance here.

## First Steps

1. Read `README.md`.
2. Read `docs/website-workflow.md`.
3. Run `git status --short --branch`.
4. Identify whether local changes are user work, generated output, or your own edits.

Do not overwrite or revert user changes unless the user explicitly asks.

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
hugo server --bind 127.0.0.1 --port 1313 --baseURL http://127.0.0.1:1313/ --disableFastRender
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

## Publishing Rules

The publishing target is GitHub Pages through `.github/workflows/deploy.yml`.

- The workflow builds Hugo from source.
- `public/` should be produced by the workflow, not treated as long-term source.
- Before relying on deployment, verify GitHub Pages is enabled in repository settings and set to GitHub Actions.
- If using the custom domain, verify `69mike.com` in GitHub Pages settings and DNS.

## Completion Checklist

Before final response:

- Run a Hugo build when site behavior changed.
- Mention any warnings that remain.
- Report files changed and whether changes were committed.
- Leave the working tree state clear or explicitly explain remaining uncommitted work.

