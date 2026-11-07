# Jaspr Portfolio

A dark, responsive portfolio website for Titus Kariuki, built with Jaspr and Dart.

## Run locally

This project uses Jaspr static rendering, so build the generated site first and
serve the generated output:

```bash
dart pub get
dart run jaspr_cli:jaspr build
cd build/jaspr
python3 -m http.server 8080
```

Open http://localhost:8080.

The `jaspr serve` command is intended for Jaspr's client/server development
mode. This portfolio is configured for static output so the generated HTML is
available to crawlers and GitHub Pages.

You can also use the included Makefile from the project root:

```bash
make run
```

## Build

```bash
dart run jaspr_cli:jaspr build
```

The static site is generated in `build/jaspr/`. GitHub Pages deployment is configured in
`.github/workflows/deploy.yml`.

The GitHub Pages project URL is:

```text
https://codek254.github.io/jaspr_portfolio/
```
