# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Deployment

**Production** auto-deploys on push to `main` via Cloudflare Pages → serg-markovich.de  
**Preview** auto-deploys on any branch → `*.pages.dev`

`deploy.sh` is a legacy rsync script for the old VPS setup — no longer used. It is gitignored.

## Architecture

Static HTML/CSS site. No build step, no bundler, no dependencies.

**Bilingual structure:** every page exists in two versions:
- `/` — English (root, `index.html`, `cv.html`, `contacts.html`, `nav.html`)
- `/de/` — German (`de/index.html`, `de/cv.html`, `de/contacts.html`, `de/nav.html`)

Each language version is self-contained. Nav is loaded via `fetch('/nav.html')` (or `/de/nav.html`) injected into `#nav-placeholder` — there is no server-side includes.

**CV pages** (`cv.html` / `de/cv.html`) contain their CSS inline (no external stylesheet) to ensure correct PDF printing. All other pages use `css/style.css`.

**PDF CVs:** `Serg_Markovich_CV.pdf` (EN) and `de/Serg_Markovich_Lebenslauf.pdf` (DE) are binary assets committed to the repo. When CV content changes, both HTML and PDF files must be updated together.

## Content sync rule

EN (`cv.html`) and DE (`de/cv.html`) must stay in sync. Any content change to one must be reflected in the other. Same applies to `index.html` / `de/index.html` and `contacts.html` / `de/contacts.html`.

## Project Context
Portfolio site for Serg Markovich — DevOps Engineer based in Stuttgart/Berlin.
Primary case study: 2025 healthcare SaaS infrastructure (14-service self-hosted
Supabase stack, production deployment, data residency compliance).
