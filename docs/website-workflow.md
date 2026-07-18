# 69mike.com 作者维护与发布手册

这份文档供网站作者本人，以及未来协助维护网站的 Codex、Claude Code 或其他 AI agent 使用。它记录当前内容组织方式、日常写作流程、Git 工作流、VPS 部署、验证和回滚方法。

## 1. 先理解三个动作

网站维护中最容易混淆的是 `commit`、`push` 和 `deploy`。它们是三个不同动作：

1. `git commit`：只在本地保存一个版本，不会更新 GitHub，也不会更新线上网站。
2. `git push`：把 commit 上传到 GitHub。普通工作分支不会更新网站；推送或合并到 `master` 会触发 GitHub Actions 自动部署 VPS。
3. `./scripts/deploy-vps.sh`：本地人工部署入口，供手动重试或自动化不可用时使用；GitHub Actions 也复用同一个脚本。

一句话记忆：

```text
Edit -> Preview -> Build -> Commit -> Push branch -> Merge master -> Auto deploy -> Verify
```

## 2. 当前网站的真实来源

- 本地源码目录：`/Users/liuqiaomai/Documents/69mike.com`
- GitHub 仓库：`https://github.com/6QM/69mike.com`
- 默认分支：`master`
- Hugo 配置：`hugo.yml`
- Hugo 主题：PaperMod
- 线上域名：`https://69mike.com`
- 当前线上服务器：VPS `67.209.179.214`
- VPS 网站目录：`/var/www/blog`
- 生产自动部署：`.github/workflows/deploy-vps.yml`
- 共用部署脚本：`scripts/deploy-vps.sh`

GitHub 保存的是源码。`public/` 是 Hugo 自动生成的构建产物，已经被 `.gitignore` 忽略，不应手动编辑或提交。

## 3. 重要目录

- `content/posts/`：所有普通文章和 Series 文章。
- `content/posts/_index.md`：Essays 列表页配置。
- `content/projects/_index.md`：Projects 页面正文和工作优先级说明。
- `content/series/`：Series 的稳定介绍页。
- `content/bookshelf.md`：Bookshelf 数据和页面内容。
- `content/diary.md`：Diary 页面。
- `content/about_me.md`：About 页面。
- `data/projects.yaml`：四个长期项目的唯一项目数据源。
- `layouts/`：本项目对 PaperMod 的模板覆盖和短代码。
- `assets/css/extended/`：会进入 Hugo 管线的自定义 CSS。
- `assets/js/`：会进入 Hugo 管线的自定义 JavaScript。
- `static/images/`：直接复制到网站的图片。
- `static/files/`：PDF、简历等公开文件。
- `scripts/deploy-vps.sh`：VPS 发布脚本。
- `.github/workflows/deploy.yml`：GitHub Pages 备用构建与发布流程，不是线上主发布目标。
- `.github/workflows/deploy-vps.yml`：正式 VPS 自动部署流程。
- `AGENTS.md`：给 AI agent 读取的项目约束。

## 4. 每次开始工作前

进入项目目录：

```bash
cd "/Users/liuqiaomai/Documents/69mike.com"
```

检查当前状态：

```bash
git status --short --branch
git log -5 --oneline --decorate
```

如果准备从 `master` 开始一个新任务：

```bash
git switch master
git pull --ff-only origin master
git switch -c content/short-task-name
```

分支名称建议：

- `content/new-essay-topic`
- `content/update-bookshelf`
- `site/fix-mobile-layout`
- `site/update-projects`
- `docs/update-workflow`

如果 `git status` 显示未提交内容，先确认这些内容来自哪里。不要覆盖、删除或重置不属于当前任务的修改。

## 5. 启动本地预览

推荐命令：

```bash
hugo server \
  --bind 127.0.0.1 \
  --port 1313 \
  --baseURL http://127.0.0.1:1313/ \
  --disableFastRender \
  --renderToMemory
```

本地地址：

```text
http://127.0.0.1:1313/
```

`--renderToMemory` 很重要。它让本地预览不依赖磁盘里的 `public/`，也避免生产构建后本地菜单错误跳转到 `https://69mike.com`。

如果端口被占用，可换成其他端口，例如：

```bash
hugo server --bind 127.0.0.1 --port 1314 --baseURL http://127.0.0.1:1314/ --disableFastRender --renderToMemory
```

## 6. 发布普通文章

创建文章：

```bash
hugo new content/posts/YYYY-MM-DD-short-title.md
```

推荐的最小 front matter：

```yaml
---
title: "Article title"
date: 2026-07-12T12:00:00+08:00
author: "Qiaomai"
categories: ["Essay"]
tags: ["writing", "learning"]
showToc: true
draft: true
ShowPostNavLinks: true
---
```

写作过程中使用 `draft: true`。准备发布时改为：

```yaml
draft: false
```

发布前检查：

- 标题和日期正确。
- 作者统一使用 `Qiaomai`。
- 没有 `example.com`、占位图片或 lorem ipsum。
- 文章目录需要时设置 `showToc: true`。
- 上一篇/下一篇组件需要时设置 `ShowPostNavLinks: true`。
- 图片路径真实存在。
- 手机端没有超宽内容。

## 7. 发布 Series 文章

Series 文章仍然放在 `content/posts/`，不要为每个项目建立另一套文章目录。这样文章会同时出现在：首页、Essays、Archive、Search、Tags 和对应 Series 页面。

### The Worker Investor

```yaml
categories: ["Essay"]
series: ["The Worker Investor"]
tags: ["work", "ownership", "optionality"]
```

Series 页面：

```text
/series/the-worker-investor/
```

### Human Capital ETF

```yaml
categories: ["Essay"]
series: ["Human Capital ETF"]
tags: ["human capital", "learning", "compounding"]
```

Series 页面：

```text
/series/human-capital-etf/
```

规则：

- `series` 表示文章属于哪个长期项目。
- `tags` 表示文章讨论哪些可复用主题。
- 不要只用 tag 代替 Series。
- Series 稳定介绍维护在 `content/series/<series-slug>/_index.md`。
- 不要把 Human Capital ETF 描述成真实金融 ETF、证券或投资基金。

## 8. 更新 Projects 页面

项目的名称、状态、优先级、核心问题、定位、介绍和链接集中维护在：

```text
data/projects.yaml
```

当前项目：

1. The Worker Investor
2. Human Capital ETF
3. Before the Genius
4. Compounding Yourself

`priority` 控制 Projects 页面的显示顺序。改变顺序时，只修改 `data/projects.yaml`，不要在多个模板里分别改。

Projects 页面的总体介绍和当前工作顺序维护在：

```text
content/projects/_index.md
```

## 9. 更新 Bookshelf

书籍数据在：

```text
content/bookshelf.md
```

每个年份只保留一个数据块，例如：

```yaml
books:
  2026:
    - title: "Book title"
      author: "Author"
      cover: "/images/bookcover-for-bookshelf/example.jpg"
      color: "darkgreen"
```

封面放在：

```text
static/images/bookcover-for-bookshelf/
```

不要把同一年拆成 `20261`、`20262`。`static/js/bookshelf.js` 会根据屏幕宽度自动把书分配到多行书架。

不要修改原有 3D 书籍结构，除非确实要重新设计 Bookshelf。

## 10. 更新首页、菜单和 About

- 首页标题、简介、社交账号、菜单：`hugo.yml`
- 首页 Writing Series：由 `data/projects.yaml` 和 `layouts/partials/writing_series_links.html` 自动生成。
- About 正文：`content/about_me.md`
- About 响应式布局：`layouts/shortcodes/personal-info.html`、`layouts/shortcodes/resume-entry.html` 和 `assets/css/extended/69mike-about.css`
- Projects 视觉：`assets/css/extended/69mike-projects.css`

菜单修改后同时检查桌面和手机宽度，避免导航横向溢出。

## 11. 生产构建检查

每次准备提交前运行：

```bash
hugo --minify --cleanDestinationDir
git diff --check
```

期望结果：

- Hugo 没有 `ERROR`。
- Hugo 没有新增 `WARN` 或 deprecation warning。
- `git diff --check` 没有输出。

还应检查：

```bash
git status --short
```

确认没有误加入：

- `.DS_Store`
- `.hugo_build.lock`
- `public/`
- 编辑器缓存
- SSH 私钥
- 密码、token 或其他凭据

## 12. Git 提交和推送

查看修改：

```bash
git status --short
git diff --stat
git diff
```

只暂存本次任务涉及的文件：

```bash
git add path/to/file1 path/to/file2
git commit -m "Describe the change"
```

把工作分支推到 GitHub：

```bash
git push -u origin "$(git branch --show-current)"
```

推荐先通过 GitHub PR 合并到 `master`。个人维护时，如果确认远端 `master` 没有其他新提交，也可以本地 fast-forward：

```bash
git fetch origin
git switch master
git pull --ff-only origin master
git merge --ff-only your-working-branch
git push origin master
```

检查本地和 GitHub 是否一致：

```bash
git status --short --branch
git rev-parse HEAD
git rev-parse origin/master
```

重要：推送普通工作分支不会更新网站；只有 `master` 更新才会触发正式 VPS 自动部署。

## 13. 自动发布到 VPS

推送或合并到 `master` 后，`.github/workflows/deploy-vps.yml` 会自动：

1. Checkout 对应的 `master` commit。
2. 安装固定版本的 Hugo Extended。
3. 运行 `git diff --check`。
4. 从 GitHub Secrets 加载独立的生产部署密钥和服务器 host key。
5. 调用 `scripts/deploy-vps.sh` 构建网站。
6. 在 `/var/www/backups/` 创建带时间戳的完整备份。
7. 先在服务器临时目录验证构建包，再替换 `/var/www/blog` 并修正权限；替换失败时自动恢复刚创建的备份。
8. 验证首页和 Bookshelf 的 HTTPS 响应。

同一时间只允许一个 production workflow 运行，后来的部署会排队，不会中断正在替换网站的任务。可在 GitHub Actions 页面使用 `workflow_dispatch` 手动重新运行。

查看正式部署：

```bash
gh run list --workflow deploy-vps.yml --branch master --limit 3
```

### 本地备用发布

当 GitHub Actions 不可用，或需要从本机人工重试时运行：

```bash
./scripts/deploy-vps.sh
```

本地脚本会执行与 Actions 相同的核心发布逻辑：

1. 运行生产 Hugo 构建。
2. 删除 `.DS_Store` 和 AppleDouble 文件。
3. 打包 `public/`。
4. 使用 `~/.ssh/agent/69mike_vps_deploy_ed25519` 上传。
5. 在 `/var/www/backups/` 创建带时间戳的完整备份。
6. 在服务器临时目录验证构建包后替换 `/var/www/blog`；替换失败时自动恢复备份。
7. 修正目录和文件权限。
8. 验证首页和 Bookshelf 的 HTTPS 响应。

成功输出示例：

```text
backup=/var/www/backups/blog-YYYYMMDD-HHMMSS
files=235
Deployed and verified https://69mike.com/
```

每次记录 workflow 或本地脚本返回的 `backup=` 路径。不要把文档中某一个旧备份路径当成永远最新的备份。

## 14. 发布后验证

至少检查以下页面：

```text
https://69mike.com/
https://69mike.com/projects/
https://69mike.com/about_me/
https://69mike.com/bookshelf/
https://69mike.com/archives/
https://69mike.com/search/
```

如果发布了文章，还要检查：

- 文章 URL 返回 200。
- 首页文章列表出现新文章。
- Series 页面出现新文章。
- Tags 正确。
- Table of Contents 正常。
- Prev/Next 正常。
- 手机端正文、图片和按钮没有横向溢出。

终端快速检查：

```bash
curl -I https://69mike.com/
curl -I https://69mike.com/projects/
curl -I https://69mike.com/bookshelf/
```

检查正式 VPS GitHub Actions：

```bash
gh run list --workflow deploy-vps.yml --branch master --limit 3
```

`deploy.yml` 的 GitHub Pages 工作流是备用构建与镜像。域名 DNS 指向 VPS，因此 `deploy-vps.yml` 的结果才是线上真实结果。

## 15. 回滚

### 首选：Git revert 后重新部署

如果错误来自源码 commit：

```bash
git switch master
git pull --ff-only origin master
git revert <bad-commit-sha>
git push origin master
```

推送 revert commit 后会自动重新部署。如果自动化不可用，再运行 `./scripts/deploy-vps.sh`。

这种方式会保留完整历史，优先于 `git reset --hard` 或强制推送。

### 紧急：恢复 VPS 备份

先确认备份存在：

```bash
ssh -i ~/.ssh/agent/69mike_vps_deploy_ed25519 mikee@67.209.179.214
test -d /var/www/backups/blog-YYYYMMDD-HHMMSS
```

恢复前应先备份当前线上目录。然后清空 `/var/www/blog` 并从目标备份复制回来。这个操作具有破坏性，建议交给 Codex 执行并逐项验证，不要在不确认备份路径时直接运行。

## 16. GitHub Pages 和 DNS

`.github/workflows/deploy.yml` 会在 `master` 或 `main` 推送后构建 GitHub Pages。

目前：

- `69mike.com` DNS 指向 VPS `67.209.179.214`。
- VPS 是正式线上发布目标。
- GitHub Pages 是备用和未来可切换方案。
- `static/CNAME` 保留自定义域名配置。

切换到 GitHub Pages 前，必须先调整 DNS，并确认 GitHub Pages HTTPS 证书已经生效。

## 17. 隐私和安全

GitHub 仓库是公开仓库。提交前检查：

- 不提交密码、token、cookie 或 API key。
- 不提交 SSH 私钥。
- 不提交未准备公开的简历、照片或个人文件。
- `static/` 下的内容都会公开访问。
- 文章中的公司经历只写可公开职责，不写客户、平台代号、车型、订单、参数或内部流程细节。

VPS 密码不应写入 README、脚本、commit 或 agent prompt。日常部署只使用 SSH key。

## 18. 给 AI Agent 的启动提示词

```text
This is my Hugo personal website source for 69mike.com.
Please first read README.md, AGENTS.md, and docs/website-workflow.md.
Run git status --short --branch before editing.
Do not overwrite unrelated local changes.
Keep all articles in content/posts and use series for project identity.
Run a Hugo production build and git diff --check before finishing.
Do not commit, push, or deploy unless I explicitly ask.
When I ask for deployment, push the intended commit to GitHub first,
then run scripts/deploy-vps.sh and verify the live URLs.
```

## 19. 历史归档点

2026-07-06 与当时线上版本匹配的归档：

- Archive branch：`archive/john-copy-2026-07-06`
- Archive tag：`john-copy-online-2026-07-06`
- Archive commit：`2bca5a2057ed442b2731e325966d635d6d773f67`

归档只用于历史恢复。日常新工作应从最新 `master` 创建分支，不要继续从旧归档点创建普通内容分支。

## 20. 作者发布清单

```text
[ ] 我修改的是源码，不是 public/
[ ] 本地预览正常
[ ] 手机端检查正常
[ ] draft 已设为 false
[ ] 文章 URL、图片、Tags、Series 正确
[ ] ShowPostNavLinks 和目录设置符合预期
[ ] hugo --minify --cleanDestinationDir 通过
[ ] git diff --check 通过
[ ] 没有密码、私钥或未公开文件
[ ] 已 commit
[ ] 已 push 到 GitHub
[ ] master 指向预期 commit
[ ] 已运行 scripts/deploy-vps.sh
[ ] 已记录 VPS backup 路径
[ ] 线上关键页面返回 200
[ ] 线上手机端视觉正常
```
