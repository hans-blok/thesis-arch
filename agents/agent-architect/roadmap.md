# Agent Roadmap

## Overview

| Agent | Primary Purpose | Typical Intents |
|---|---|---|
| `agent-architect` | Define and validate agent boundaries | `define-boundary`, `verify-boundary` |
| `agent-smith` | Scaffold new agents from approved definitions | `create-agent`, `validate-agent` |
| `thesis-writer` | Draft thesis sections | `draft-section`, `revise-section` |
| `source-researcher` | Collect and summarize academic sources | `search-sources`, `summarize-paper` |
| `citation-guardian` | Validate citation quality and traceability | `validate-citations`, `check-traceability` |
| `methodology-reviewer` | Review methodology coherence and rigor | `review-methodology` |
| `argument-auditor` | Evaluate logical consistency of arguments | `audit-argument` |
| `structure-editor` | Improve thesis structure and readability | `improve-structure`, `refactor-outline` |
| `evidence-mapper` | Link claims to supporting evidence | `map-evidence` |
| `revision-coordinator` | Coordinate review cycles and revisions | `prepare-revision-plan` |
| `reproducibility-checker` | Verify reproducibility requirements | `check-reproducibility` |
| `publication-preparer` | Prepare final submission artifacts | `prepare-submission` |

---

## Agent definitions

### thesis-writer

**Purpose:** Produces thesis draft content.

**Intents:** `draft-section`, `revise-section`, `expand-outline`, `rewrite-academic`

**Boundary**

| | |
|---|---|
| In scope | drafting prose, restructuring paragraphs, integrating approved citations, maintaining academic tone |
| Out of scope | inventing citations, validating statistical correctness, approving scientific claims, autonomous conclusions |

> This should remain a writing assistant, not a scientific authority.

---

### source-researcher

**Purpose:** Supports literature discovery and source summarization.

**Intents:** `search-sources`, `summarize-paper`, `classify-source`, `extract-findings`

**Boundary**

| | |
|---|---|
| In scope | locating papers, summarizing publications, identifying primary vs secondary sources, extracting metadata |
| Out of scope | fabricating interpretations, deciding thesis conclusions, citation formatting authority |

> Should preserve source traceability at all times.

---

### citation-guardian

**Purpose:** Protects citation integrity and traceability.

**Intents:** `validate-citations`, `check-traceability`, `detect-missing-citations`, `verify-reference-format`

**Boundary**

| | |
|---|---|
| In scope | citation verification, bibliography consistency, source-reference matching, missing citation detection |
| Out of scope | rewriting thesis content, interpreting scientific findings, selecting arguments |

> This agent operationalizes the constitution's citation discipline principle.

---

### methodology-reviewer

**Purpose:** Reviews methodological rigor and consistency.

**Intents:** `review-methodology`, `detect-method-gaps`, `evaluate-validity`

**Boundary**

| | |
|---|---|
| In scope | methodology coherence, sampling review, procedural consistency, validity considerations |
| Out of scope | inventing methods, rewriting entire chapters, statistical computation execution |

> Human review remains mandatory for final approval.
