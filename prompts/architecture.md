# Architecture

Current as of 2026-06-03.

## Overview

Static Jekyll site for MethylGrammarLab, deployed as GitHub Pages for `methylgrammarlab.org` via `CNAME`.

## Runtime And Dependencies

- Ruby/Jekyll via `Gemfile`; the primary dependency is the `github-pages` gem.
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
- `people.md` reads `_members/current` and `_members/past`; `research.md` reads `_projects`; `openings.md` reads `_jobs`; `tools.md` and `teaching.md` read their matching collections.
- Publications are CSL-style JSON records under `_data/pubs` rendered by `pubs.md`; `_bibliography/toprefs.bib` is a BibTeX source/reference file.

## Assets And Styling

- Images, PDFs, RMarkdown/html workshop material, and a bigWig data file live under `assets/` and `datafiles/`.
- `assets/css/cards.css` provides shared card styles for people, research, publications, and openings pages.
- Theme variables are Sandstone/Bootswatch-derived in `_sass/_variables.scss`; `_sass/_bootstrap_customization.scss` currently offsets the fixed-top navbar.

## Build And Deployment

- Local build/serve: `bundle exec jekyll build` or `bundle exec jekyll serve`.
- `.travis.yml` runs Ruby 2.2 and `bundle exec jekyll build`.
- `.gitignore` excludes generated build/dependency outputs including `_site`, `.sass-cache`, `.jekyll-metadata`, `node_modules`, `package-lock.json`, and `Gemfile.lock`.
