# Working on this repository

This is Aniket Bhatnagar's personal website, built with Hugo and published
from the committed `docs/` directory through GitHub Pages.

## Source files

- `src/hugo.toml`: site configuration and homepage text, including the hero,
  biography, and experience sections.
- `src/content/`: Markdown pages, blog posts, and assets stored alongside posts.
- `src/layouts/`: local template overrides.
- `src/assets/` and `src/static/`: site assets and files copied into the build.
- `src/go.mod` and `src/go.sum`: Hugo module dependencies, including the theme.
- `docs/`: generated website. Never edit files here by hand.
- `src/public/`: intermediate build output. Never edit files here by hand.

## Build and verification

1. Make website changes in `src/`.
2. From the repository root, run `./bin/build.sh` after any change affecting
   the website. This generates the site, replaces `docs/`, and copies
   `src/static/.well-known/` into the output. Running `hugo` alone does not
   complete this workflow.
3. Check that the build succeeded. Inspect `git status --short` and the diff
   to verify the intended changes and identify unexpected generated changes.
4. Verify the affected content in the generated output. For visual or layout
   changes, preview the site in a browser when possible.
5. When committing website changes, include the source changes and **all**
   resulting changes under `docs/`, including additions and deletions.

Documentation-only changes such as edits to this file or `README.md` do not
require a site build. Do not commit temporary build locks or tool caches.

## Local tools

- Hugo and Go must be installed and available on `PATH` for module-based builds.
- The existing site was generated with Hugo **0.121.2 extended**. Prefer that
  version for consistent output; treat a Hugo or module upgrade as a separate
  change rather than silently upgrading while editing content.
- To preview locally, run `cd src && hugo server`.

## Scope and publishing

Keep changes focused on the user's request. Preserve module versions unless
an update is requested or necessary for the task. If a build fails, fix or
report the failure; do not substitute manual edits to generated files.

Committing and pushing are separate actions. Follow the user's instructions
about each; a local commit does not itself publish the site. Pushing can
trigger GitHub Pages deployment.
