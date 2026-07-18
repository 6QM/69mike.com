# 69mike.com

Personal Hugo blog source for `69mike.com`.

The site is built with Hugo and the PaperMod theme. The repository is intended to keep source content, configuration, custom shortcodes, and workflow documentation under version control. Generated output in `public/` is build artifact, not source.

## Author Guide

For daily writing, maintenance, Git publishing, VPS deployment, verification, and rollback, start with:

**[`docs/website-workflow.md`](docs/website-workflow.md)**

The guide is written for the site author and explains the complete sequence:

```text
Edit -> Preview -> Build -> Commit -> Push branch -> Merge master -> Auto deploy -> Verify
```

Remember: a commit is local. Pushing or merging to `master` updates GitHub and triggers the production VPS deployment automatically.

## Project Layout

- `content/`: pages and blog posts.
- `content/bookshelf.md`: bookshelf data and page content.
- `content/projects/_index.md`: project hub generated from `data/projects.yaml`.
- `content/series/`: stable introductions for ongoing writing series.
- `data/projects.yaml`: canonical project names, statuses, origins, descriptions, external links, and series links.
- `layouts/`: local shortcode and partial overrides.
- `static/`: images, CSS, JavaScript, files, and favicons copied directly into the site.
- `docs/website-workflow.md`: personal workflow notes, archive point, publishing plan, and maintenance backlog.
- `.github/workflows/deploy.yml`: backup GitHub Pages deployment workflow.
- `.github/workflows/deploy-vps.yml`: production VPS deployment workflow.
- `AGENTS.md`: shared instructions for Codex, Claude Code, and other AI agents.

## Local Development

Install Hugo Extended, then preview locally:

```bash
hugo server --bind 127.0.0.1 --port 1313 --baseURL http://127.0.0.1:1313/ --disableFastRender --renderToMemory
```

Build the production site:

```bash
hugo --minify --cleanDestinationDir
```

The local preview is available at:

```text
http://127.0.0.1:1313/
```

`--renderToMemory` keeps preview output separate from the production `public/` directory, so running a production build cannot replace local navigation links with `https://69mike.com` while previewing.

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
- All posts under `content/posts/` appear together at `/posts/` and on the homepage article stream.


## Project And Essay Workflow

Project metadata is centralized in `data/projects.yaml`. Update that file when adding or changing a project name, status, idea origin, description, external landing page, or related series link. The Projects page reads from this data and does not enter the homepage post stream. Projects with a `series_url` automatically appear in the compact homepage Writing Series links and in the Projects page series directory.

Current project landing pages:

- The Worker Investor: `https://theworkerinvestor.com`
- Human Capital ETF: `https://humancapitaletf.com`
- Compounding Yourself: project metadata only for now.
- Before the Genius: project metadata only for now.

Use Hugo's `series` taxonomy for project identity and `tags` for the subjects discussed by an individual essay. For a new The Worker Investor essay, use:

```yaml
categories:
  - Essay
series:
  - The Worker Investor
tags:
  - work
  - ownership
  - optionality
```

For a new Human Capital ETF essay, use:

```yaml
categories:
  - Essay
series:
  - Human Capital ETF
tags:
  - human capital
  - learning
  - compounding
```

The corresponding archive pages are generated automatically:

- `/series/the-worker-investor/`
- `/series/human-capital-etf/`

Each series introduction is maintained once in `content/series/<series-slug>/_index.md`. New essays appear automatically on the matching series page while remaining visible in `/posts/`, the homepage, Archive, Search, and Tags. Individual essay pages automatically show their series membership.

Do not use a project name only as a tag. Project identity belongs in `series`; tags should remain reusable subjects such as `work`, `ownership`, `learning`, or `AI`.

Do not describe Human Capital ETF as a real financial ETF, security, or investment fund. It is a personal human-capital allocation framework.

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

Every push or merge to `master` triggers `.github/workflows/deploy-vps.yml`. It builds the site, packages `public/`, uploads it with a dedicated Actions deploy key, backs up `/var/www/blog`, replaces the web root, and verifies the live site.

For an intentional local fallback or manual redeploy, run:

```bash
./scripts/deploy-vps.sh
```

GitHub Pages remains a backup workflow-based deployment path, but the domain DNS points to the VPS and the VPS workflow is the production path.

The normal publishing path is:

1. Edit source files on a branch.
2. Run a local Hugo build.
3. Commit and push the working branch.
4. Merge the reviewed change into `master`.
5. GitHub Actions builds, backs up, deploys, and verifies the VPS automatically.

GitHub Pages is configured with source set to GitHub Actions. The custom domain is set to `69mike.com`, but DNS currently remains on the VPS.

The custom domain is also kept in `static/CNAME`, so Hugo copies it into the artifact if GitHub Pages is used later.

## Archive

The live-matching archive from 2026-07-06 is recorded in `docs/website-workflow.md`.

Current restore references:

- Archive branch: `archive/john-copy-2026-07-06`
- Archive tag: `john-copy-online-2026-07-06`
