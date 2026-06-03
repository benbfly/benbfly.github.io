# Plans

Current as of 2026-06-03.

## Current State

- AgentOS developer-project scaffold has been added: `AGENTS.md`, `prompts/README.md`, `prompts/architecture.md`, and `prompts/plans.md`.
- The site remains a Jekyll/GitHub Pages static website; no site behavior or content was changed by the scaffold.
- The worktree had a pre-existing `.DS_Store` modification before this setup; leave it alone unless Ben asks.

## Maintenance Guidance

- Read `prompts/architecture.md` before changing `_config.yml`, collections, layouts/includes, data formats, dependencies, build behavior, or deployment behavior.
- For content-only edits, update the relevant top-level page or collection Markdown and validate with a Jekyll build when practical.
- Keep active prompt files brief; move dated historical detail into `prompts/*_deep_records_*.md`.

## Validation

- `bundle exec jekyll build` was attempted on 2026-06-03. It did not reach a Jekyll build because the local Bundler environment is missing `http_parser.rb`, required through `github-pages` -> `jekyll-seo-tag` -> `jekyll` -> `em-websocket`.

## Safe Resume

- Start with `git status --short`.
- Ignore the pre-existing `.DS_Store` modification unless Ben asks.
- If continuing this setup, install/resolve local Ruby dependencies if needed, rerun `bundle exec jekyll build`, and update this file with the result.
