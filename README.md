# agentic-arch

> A governed workspace for writing a scientific thesis with AI agents — structuring research, documentation, and agent behavior through charters, boundaries, contracts, and constitutions. More integrations coming (Zenodo, and others).

⭐ If this structure is useful to you, please star the repository.

---

## What this is

A workspace for writing a scientific thesis in the academic world using Agentic AI. It provides structured agent governance (charter, boundary, contract, constitution), a documentation-as-code approach (MkDocs), and reusable templates — designed for use with VS Code + GitHub Copilot in agent mode.

**Before you start:** if you are new to Agentic AI, read the lessons first. They explain the core concepts, principles, and benefits you need to work effectively with this workspace.

→ [Concepts](docs/lessons-agentic-ai/concepts.md) · [Principles](docs/lessons-agentic-ai/principles.md) · [Benefits](docs/lessons-agentic-ai/benefits.md)

---

## Requirements

### Python 3.10+

MkDocs and its plugins require Python. Install from [python.org](https://www.python.org/downloads/) or via winget:

```powershell
winget install Python.Python.3.12
```

Verify:

```powershell
python --version
```

---

### MkDocs + Material theme

Used to render the `docs/` folder as a static documentation site.

```powershell
pip install mkdocs mkdocs-material
```

Verify:

```powershell
mkdocs --version
```

Serve locally:

```powershell
mkdocs serve
```

Build static site:

```powershell
mkdocs build
```

---

### Pandoc

Used to convert Markdown documents to PDF, Word, or other formats (e.g. for thesis export).

Install from [pandoc.org](https://pandoc.org/installing.html) or via winget:

```powershell
winget install JohnMacFarlane.Pandoc
```

Verify:

```powershell
pandoc --version
```

---

## Structure

```
agentic-arch/
├── thesis/           # thesis chapters, concepts, and architecture documents
├── agents/           # agent definitions, charters, boundaries, and contracts
├── docs/             # documentation rendered by MkDocs
├── governance/       # constitution and workspace-level governance
├── .github/          # prompt templates and agent contracts
└── README.md
```

---

## License

MIT

---

## Publishing to GitHub Pages

The site is built and deployed automatically via GitHub Actions on every push to `main`.

**One-time setup required:**

1. Go to **https://github.com/hans-blok/thesis-arch/settings/pages**
2. Under **Source**, select `GitHub Actions` *(not "Deploy from a branch")*
3. Save

After that, push any commit to `main` — or re-run the workflow manually via **Actions → pages build and deployment → Re-run jobs**.

**Live site:** https://hans-blok.github.io/thesis-arch/
