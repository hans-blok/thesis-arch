# 5 Core Principles of Agentic AI

A foundation for anyone building or working with AI agent systems.

---

## 1. Autonomy Within Bounds

An agent must be able to act independently — but only within explicitly defined limits.

Unbounded autonomy is not a feature; it is a liability. The value of an agent comes from what it can do *reliably*, not from what it *might* do if left unconstrained. Every agent needs a boundary that defines what is in scope, what is out of scope, and what rules govern its behavior.

**Why it matters**
Without bounds, agents drift. They interpret ambiguity in unpredictable ways, take actions outside their intended role, and become impossible to audit or correct.

**In this workspace**
Each agent has an `agent-boundary.md` and an `agent-charter.md` that together define the space within which it may act.

---

## 2. Grounding Over Generation

An agent must reason from explicit, provided sources — not from what it "knows" from training.

Language models generate plausible text. Plausible is not the same as correct. When an agent cites a source, summarizes a document, or draws a conclusion, that output must be traceable to content that was explicitly provided — not inferred from training data.

**Why it matters**
Training data is opaque, dated, and unverifiable. Grounded outputs can be checked, corrected, and cited. Ungrounded outputs (hallucinations) undermine trust and, in scientific contexts, integrity.

**In this workspace**
Prompt templates include a `context.base` field that injects the relevant source documents before the model reasons. The constitution prohibits fabricated citations.

---

## 3. Human Authority is Non-Negotiable

AI agents assist. They do not decide. Final authority over interpretations, conclusions, and consequential actions remains with the human.

This is not a limitation to work around — it is the correct architecture for systems where errors matter. The human-in-the-loop is not a bottleneck; it is the safety mechanism that makes the rest of the system trustworthy.

**Why it matters**
Agents can be confidently wrong. Autonomous systems can compound errors across multiple steps before anyone notices. Human checkpoints break that chain.

**In this workspace**
Defined as the first principle of the constitution: humans retain final authority over arguments, interpretations, conclusions, citations, and submissions.

---

## 4. Explicit Structure Beats Implicit Convention

Everything an agent needs to behave correctly must be written down — in the prompt, the charter, the boundary, or the contract. Nothing should be assumed.

Implicit conventions are invisible to agents. If a rule is not stated, the model will fill the gap with its best guess. Structured, explicit documents (templates, frontmatter, defined fields) make expectations unambiguous and behavior reproducible.

**Why it matters**
Implicit systems are fragile. They work until the context shifts, a new model is used, or a new team member (human or agent) joins who does not share the assumed convention.

**In this workspace**
Charters, contracts, and prompts use structured YAML frontmatter. Templates use `{{PLACEHOLDER}}` syntax to make required inputs visible. Nothing is left to interpretation.

---

## 5. Traceability is a First-Class Requirement

Every significant agent output must be traceable: what was the input, which rules applied, what sources were used, and who or what produced the result.

Traceability is what allows a system to be audited, corrected, and trusted over time. It is the difference between a black box and a governed system. In scientific and professional contexts, it is not optional.

**Why it matters**
Without traceability, errors cannot be diagnosed. Correct outputs cannot be reproduced. The system cannot learn from its mistakes. And trust cannot be established with anyone who was not present when the output was produced.

**In this workspace**
Contracts include a `traceability.herkomstpositie` field. The constitution mandates that research outputs be reproducible and that generated content remain reviewable and editable by humans.
