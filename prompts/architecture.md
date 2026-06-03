# Architecture

Current as of 2026-06-03.

## Overview

Static Jekyll site for MethylGrammarLab, deployed as GitHub Pages for `methylgrammarlab.org` via `CNAME`.

## Runtime And Dependencies

- Ruby/Jekyll via `Gemfile`; `.ruby-version` pins local development to Ruby `3.3.4`, matching the current GitHub Pages runtime.
- The primary dependency is the `github-pages` gem; local `bundle install` currently resolves `github-pages 232` and Jekyll `3.10.0`.
- Local Ruby is provided by `rbenv` under `/Users/benbfly/.rbenv`; `~/.zshrc` initializes rbenv so fresh zsh shells use `.ruby-version` automatically.
- The local Ruby was compiled with ruby-build, local OpenSSL, and local libyaml so native gems build for arm64 macOS instead of relying on Apple system Ruby.
- These local Ruby/rbenv changes do not affect GitHub Pages hosting. GitHub Pages builds with GitHub's own runtime; `.ruby-version` is a local development hint.
- `_config.yml` enables `jekyll-feed` and `jekyll-sitemap`; templates also use `{% seo %}`, so the GitHub Pages stack is expected to provide `jekyll-seo-tag`.
- CSS is compiled from `assets/main.scss`, which imports vendored Bootstrap 4 Sass, Bootstrap-4-Jekyll helpers, syntax highlighting, and local customization.
- Bootstrap and jQuery browser assets are vendored under `_sass/bootstrap/` and `assets/javascript/bootstrap/`; `update_bootstrap.sh` refreshes them with npm.
- External browser scripts are loaded from `_includes/head.html`: Altmetric/CloudFront embed, Citation.js, and Dimensions badges.

## Layout And Rendering

- `_layouts/default.html` composes `_includes/head.html`, `_includes/header.html`, page content, and `_includes/footer.html`.
- `_layouts/page.html`, `_layouts/post.html`, and `_layouts/home.html` are thin wrappers around `default`.
- Header navigation comes from `_config.yml` `header_pages`; the `Join us!` link is hard-coded in `_includes/header.html`.
- `index.md` uses `default` and includes `_includes/desc.html` for the homepage text.

## Content Model

- Top-level Markdown/HTML files define public pages such as `index.md`, `people.md`, `research.md`, `pubs.md`, `openings.md`, and `contact.md`.
- Jekyll collections in `_config.yml`: `members`, `jobs`, `projects`, `tools`, and `teaching`. They are consumed by listing pages and are not configured for standalone output.
- `people.md` reads `_members/current` and `_members/past`; member front matter supports optional `website`, `orcid`, `current_address`, and `current_address_url` fields in addition to the existing name/position/contact/photo fields. `research.md` reads `_projects`; `openings.md` reads `_jobs`; `tools.md` and `teaching.md` read their matching collections.
- Publications are CSL-style JSON records under `_data/pubs` rendered by `pubs.md`; `_bibliography/toprefs.bib` is a BibTeX source/reference file.

## Assets And Styling

- Images, PDFs, RMarkdown/html workshop material, and a bigWig data file live under `assets/` and `datafiles/`.
- `assets/css/cards.css` provides shared card styles for people, research, publications, and openings pages.
- Theme variables are Sandstone/Bootswatch-derived in `_sass/_variables.scss`; `_sass/_bootstrap_customization.scss` currently offsets the fixed-top navbar.

## Build And Deployment

- Local build/serve: open a fresh shell with rbenv initialized, `cd /Users/benbfly/Documents/benbfly.github.io`, then run `bundle exec jekyll build` or `bundle exec jekyll serve`.
- The normal preview URL is `http://127.0.0.1:4000`; the in-app browser can be used to inspect it before commits.
- `.travis.yml` runs Ruby 2.2 and `bundle exec jekyll build`.
- `.gitignore` excludes generated build/dependency outputs including `_site`, `.sass-cache`, `.jekyll-metadata`, `node_modules`, `package-lock.json`, and `Gemfile.lock`.
