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

- Typography base-size preview validated on 2026-06-03: `_sass/_variables.scss` now sets `$font-size-base` to `1rem`; `_site/assets/main.css` rendered `body { font-size: 1rem; }`; in-app browser verification at `http://127.0.0.1:4001/` computed body and ordinary paragraph text as `16px` with `24px` line-height and no page console errors. `/Users/benbfly/.rbenv/bin/rbenv exec bundle exec jekyll build` completed successfully with only the existing missing `project` layout and Bootstrap deprecation warnings.
- Publications header link update validated on 2026-06-03: `pubs.md` now defines `web_of_science_researcher` and links "Web of Science Researcher page" after the Google Scholar link; `_site/pubs.html` rendered `https://www.webofscience.com/wos/author/record/AAT-3720-2021`; `/Users/benbfly/.rbenv/bin/rbenv exec bundle exec jekyll build` completed successfully with only the existing missing `project` layout and Bootstrap deprecation warnings.
- People page photo update validated on 2026-06-03: Ben Berman's member photo front matter now points to `Berman2026.jpg`; `_site/people/index.html` rendered `/assets/images/Berman2026.jpg`; `/Users/benbfly/.rbenv/bin/rbenv exec bundle exec jekyll build` completed successfully with only the existing missing `project` layout and Bootstrap deprecation warnings.
- Research page update validated on 2026-06-03: `_projects/022_ctdna.md` was moved to `_projects/010_ctdna.md` so "Characterizing tumor DNA in circulation using Oxford Nanopore sequencing" renders first on `_site/research.html`; the project copy now links to Berman, Genome Biology 2026 (`10.1186/s13059-026-04060-8`) and Katsman, bioRxiv 2026 (`10.64898/2026.04.15.718632`) while preserving the short Research-page style. `/Users/benbfly/.rbenv/bin/rbenv exec bundle exec jekyll build` completed successfully with only the existing missing `project` layout and Bootstrap deprecation warnings.
- Publications update validated on 2026-06-03: removed `_data/pubs/ref0107.json`, the 2024 bioRxiv preprint "Long-read sequencing reveals aberrant fragmentation patterns and origins of circulating DNA in cancer"; added `_data/pubs/ref0120.json` for the 2026 Genome Biology article "Long-read sequencing identifies aberrant fragmentation patterns linked to elevated cell-free DNA levels in cancer" (`10.1186/s13059-026-04060-8`); added `_data/pubs/ref0125.json` for the 2026 Efrat Katsman bioRxiv preprint "Improved deconvolution of circulating tumor DNA from ultra-low-pass whole-genome methylation sequencing using CelFiE-ISH" (`10.64898/2026.04.15.718632`); updated the static peer-reviewed publication count in `pubs.md` from 80 to 81. JSON parsing succeeded for all `_data/pubs/*.json`; `_site/pubs.html` rendered both new DOIs and no longer contained the old preprint title/DOI; `/Users/benbfly/.rbenv/bin/rbenv exec bundle exec jekyll build` completed successfully with only the existing project-layout and Bootstrap deprecation warnings.
- People page roster update validated on 2026-06-03: Amit Levin, Dolev Revivo, and Yonatan Berg member files were removed; Efrat Katsman was moved to past members; Rohi, Ofri, Efrat, Irene, Devorah, Lior, and Dror titles/current-address/photo metadata were updated; `_site/people/index.html` rendered the requested names, titles, image, and current-address links, and omitted the removed names. `/Users/benbfly/.rbenv/bin/rbenv exec bundle exec jekyll build` completed successfully with only the existing project-layout and Bootstrap deprecation warnings.
- People page metadata-field update validated on 2026-06-03: `people.md` now conditionally renders optional `website`, `orcid`, and `current_address` member front matter. Unambiguous ORCIDs were added for Ben Berman, Efrat Katsman, Shari Orlanski, and Irene Unterman from public article/ORCID evidence; no ORCID was added for other listed members where search results were absent or ambiguous. `_site/people/index.html` rendered the four expected ORCID links and no empty Website/Current address rows; `/Users/benbfly/.rbenv/bin/rbenv exec bundle exec jekyll build` completed successfully with only the existing project-layout and Bootstrap deprecation warnings.
- People page content update validated on 2026-06-03: `_members/current/030_rohi.md` and `_members/current/040_ofri.md` were added, Efrat/Shari photo front matter was updated to their new images, `_site/people/index.html` contained the expected names and image paths, and `/Users/benbfly/.rbenv/bin/rbenv exec bundle exec jekyll build` completed successfully with only the existing project-layout and Bootstrap deprecation warnings.
- `bundle exec jekyll build` was attempted on 2026-06-03. It did not reach a Jekyll build because the local Bundler environment is missing `http_parser.rb`, required through `github-pages` -> `jekyll-seo-tag` -> `jekyll` -> `em-websocket`.
- Local preview diagnosis on 2026-06-03: Apple system Ruby 2.6.10 and Bundler 1.17.2 are active. The global gems under `/Library/Ruby/Gems/2.6.0` have broken/stale native extensions for `commonmarker`, `eventmachine`, `http_parser.rb`, and `racc`; `ffi` is also installed as an incompatible x86_64 native gem. A disposable temp bundle succeeded with the project `Gemfile` plus `gem "ffi", "< 1.17.3"`, then `BUNDLE_GEMFILE=/private/tmp/methylgrammarlab-jekyll-preview-test/Gemfile bundle exec jekyll build --source /Users/benbfly/Documents/benbfly.github.io --destination /private/tmp/methylgrammarlab-jekyll-preview-build`.
- Jekyll preview was verified on 2026-06-03 with `BUNDLE_GEMFILE=/private/tmp/methylgrammarlab-jekyll-preview-test/Gemfile bundle exec jekyll serve --source /Users/benbfly/Documents/benbfly.github.io --destination /private/tmp/methylgrammarlab-jekyll-preview-serve --host 127.0.0.1 --port 4000`; localhost returned HTTP 200 and the in-app browser loaded `http://127.0.0.1:4000/`.
- Public DNS diagnosis on 2026-06-03: `methylgrammarlab.org` uses Hover nameservers and resolves to the four GitHub Pages apex A records; `www.methylgrammarlab.org` is a CNAME to `benbfly.github.io`; HTTP and HTTPS both return 200 from GitHub Pages. `benbermanlab.com` uses Hover nameservers but has no apex A record and no `www` CNAME, so HTTP/HTTPS resolution fails. A forced Host-header test against a GitHub Pages IP for `benbermanlab.com` returned GitHub 404, consistent with this repo's single-domain `CNAME` (`methylgrammarlab.org`). To use `benbermanlab.com` as a secondary entry point, configure it as a redirect domain rather than a second direct GitHub Pages alias.
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
