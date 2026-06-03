# Plans

Current as of 2026-06-03.

## Current State

- AgentOS developer-project scaffold has been added: `AGENTS.md`, `prompts/README.md`, `prompts/architecture.md`, and `prompts/plans.md`.
- The site remains a Jekyll/GitHub Pages static website; no site behavior or content was changed by the scaffold.
- A durable local Ruby setup has been installed with `rbenv` under `/Users/benbfly/.rbenv`; this repo is pinned to Ruby `3.3.4` via `.ruby-version`, and `~/.zshrc` initializes rbenv for fresh zsh shells.
- Local rbenv, ruby-build, compiled Ruby, installed gems, and shell initialization affect Ben's Mac only. GitHub Pages hosting continues to use GitHub's own Pages runtime.

## Maintenance Guidance

- Read `prompts/architecture.md` before changing `_config.yml`, collections, layouts/includes, data formats, dependencies, build behavior, or deployment behavior.
- For content-only edits, update the relevant top-level page or collection Markdown and validate with a Jekyll build when practical.
- Keep active prompt files brief; move dated historical detail into `prompts/*_deep_records_*.md`.

## Validation

- `bundle exec jekyll build` was attempted on 2026-06-03. It did not reach a Jekyll build because the local Bundler environment is missing `http_parser.rb`, required through `github-pages` -> `jekyll-seo-tag` -> `jekyll` -> `em-websocket`.
- Local preview diagnosis on 2026-06-03: Apple system Ruby 2.6.10 and Bundler 1.17.2 are active. The global gems under `/Library/Ruby/Gems/2.6.0` have broken/stale native extensions for `commonmarker`, `eventmachine`, `http_parser.rb`, and `racc`; `ffi` is also installed as an incompatible x86_64 native gem. A disposable temp bundle succeeded with the project `Gemfile` plus `gem "ffi", "< 1.17.3"`, then `BUNDLE_GEMFILE=/private/tmp/methylgrammarlab-jekyll-preview-test/Gemfile bundle exec jekyll build --source /Users/benbfly/Documents/benbfly.github.io --destination /private/tmp/methylgrammarlab-jekyll-preview-build`.
- Jekyll preview was verified on 2026-06-03 with `BUNDLE_GEMFILE=/private/tmp/methylgrammarlab-jekyll-preview-test/Gemfile bundle exec jekyll serve --source /Users/benbfly/Documents/benbfly.github.io --destination /private/tmp/methylgrammarlab-jekyll-preview-serve --host 127.0.0.1 --port 4000`; localhost returned HTTP 200 and the in-app browser loaded `http://127.0.0.1:4000/`.
- Existing non-blocking build warnings: `_projects/015_PMDs.md` and `_projects/022_ctdna.md` request missing layout `project`; Bootstrap emits a deprecated `text-hide()` mixin warning.
- Durable preview setup completed on 2026-06-03: `rbenv` and `ruby-build` were installed under `/Users/benbfly/.rbenv`; Ruby `3.3.4` was compiled with local OpenSSL and libyaml; `.ruby-version` was added; `~/.zshrc` initializes rbenv; `bundle install` resolved `github-pages 232` and Jekyll `3.10.0`; a fresh interactive shell successfully ran `bundle exec jekyll build`.
- Current verified server command: `bundle exec jekyll serve --host 127.0.0.1 --port 4000` from a fresh shell in the repo; HTTP response reported WEBrick with Ruby `3.3.4`.

## Local Jekyll Preview

- Open a fresh zsh shell, `cd /Users/benbfly/Documents/benbfly.github.io`, then run `bundle exec jekyll serve`.
- The current preview server was verified at `http://127.0.0.1:4000` using WEBrick with Ruby `3.3.4`.
- `Gemfile.lock` is still ignored by `.gitignore`; do not treat the local lockfile as a source-controlled artifact unless Ben explicitly changes that convention.
- If `bundle` unexpectedly uses `/usr/bin/ruby`, open a fresh shell or confirm `~/.zshrc` still contains the rbenv PATH/init lines.

## Safe Resume

- Start with `git status --short`.
- Use a fresh shell so rbenv initialization in `~/.zshrc` is active.
- If preview is already running on port 4000, stop the existing Jekyll process or choose another port.
- Do not revert unrelated worktree changes such as `.DS_Store` or newly added content assets unless Ben explicitly asks.
