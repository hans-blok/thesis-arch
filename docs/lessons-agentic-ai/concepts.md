# Concepts in Agentic AI

A reference for readers with no prior knowledge of Agentic AI.
Concepts are listed in alphabetical order.

---

## Agent

**Definition**
A software entity that perceives its environment, makes decisions, and takes actions to achieve a defined goal — typically without step-by-step human instruction.

**Characteristic**
An agent operates autonomously within a defined scope. It can call tools, generate text, read files, or trigger other agents.

**Analogy**
A contractor: you hire them for a job, describe the result you want, and they work independently — within the rules of the contract.

**In this workspace**
`agents/agent-smith/` defines the agent *agent-smith*. Its charter, boundary, and contracts together describe what it is and what it may do.

---

## Agent Boundary

**Definition**
An explicit document that describes what falls inside and outside the scope of an agent's operation.

**Characteristic**
Prevents scope creep. Makes it unambiguous what an agent is and is not responsible for.

**Analogy**
A job description addendum: "this role does NOT include finance decisions or HR approvals."

**In this workspace**
`agents/agent-smith/agent-boundary.md` — defines in-scope tasks, out-of-scope tasks, and the interfaces the agent uses.

---

## Agent Charter

**Definition**
A governing document that defines the mission, responsibilities, authority, and constraints of an agent.

**Characteristic**
The charter is the single source of truth for agent behavior. All contracts must derive from it. It cannot be overridden by a prompt.

**Analogy**
A company's articles of association: the foundational document that determines what the organization exists to do and within what limits.

**In this workspace**
`agents/agent-smith/agent-charter.md` — captures mission, authority, boundaries, and governance rules for agent-smith.

---

## Agent Contract

**Definition**
A structured specification that defines a single callable intent of an agent: its inputs, outputs, constraints, and traceability.

**Characteristic**
Contracts are derived from the charter. They make individual agent capabilities explicit and machine-readable.

**Analogy**
A work order: a specific assignment given to a contractor, within the terms of their master contract.

**In this workspace**
`agents/agent-smith/contracten/create-agent.agent.md` and `.github/agents/agent-smith.create-agent.yaml` define the *create-agent* intent of agent-smith.

---

## Agentic AI

**Definition**
An AI paradigm in which language models are embedded in a control loop that allows them to take sequences of actions, use tools, and pursue goals across multiple steps.

**Characteristic**
Unlike a simple chatbot (one question → one answer), an agentic system can plan, act, observe results, and adapt — repeatedly — until a goal is achieved.

**Analogy**
The difference between asking someone a question and hiring someone to complete a project.

**In this workspace**
The entire workspace is structured around agentic AI: agents operate under charters, within boundaries, guided by a constitution, using VS Code + GitHub Copilot as the runtime.

---

## Autonomy

**Definition**
The degree to which an agent acts on its own initiative without requiring human input at each step.

**Characteristic**
Autonomy exists on a spectrum: from fully human-controlled (copilot mode) to fully autonomous (fire-and-forget). Most safe systems operate somewhere in between.

**Analogy**
Cruise control versus a self-driving car.

**In this workspace**
Agent-smith operates with bounded autonomy — it may act within its charter and boundary, but humans retain final authority (see: Constitution, Human Authority).

---

## Constitution

**Definition**
A top-level governance document that defines the principles, priorities, and non-negotiable rules that apply to all agents and all components of the workspace.

**Characteristic**
The constitution overrides all other documents. No charter, contract, or prompt may contradict it.

**Analogy**
A national constitution: the supreme law that all other laws must conform to.

**In this workspace**
`governance/consitution.md` — establishes scientific integrity, traceability, human authority, and explicit structure as core principles for this workspace.

---

## Context Window

**Definition**
The maximum amount of text (tokens) a language model can read and reason over in a single interaction.

**Characteristic**
Everything outside the context window is invisible to the model. Structured workspaces are partly designed to control *what* ends up in the context window.

**Analogy**
A desk with limited surface area: you can only work with what fits on the desk at one time.

**In this workspace**
Template files, charters, and boundary documents are kept concise and structured so that relevant context fits within the model's window when an agent is invoked.

---

## GitHub Copilot

**Definition**
An AI-powered coding assistant developed by GitHub (Microsoft), integrated into VS Code and other editors. Based on large language models (primarily from OpenAI/Anthropic).

**Characteristic**
Copilot operates in different modes: autocomplete, chat, and agent mode. In agent mode it can execute multi-step tasks using tools.

**Analogy**
A senior colleague sitting next to you: you can ask questions, have them write drafts, or delegate a task and let them work through it.

**In this workspace**
Used as the primary AI runtime. Agent-smith's prompts and contracts are designed to be invoked via Copilot's agent mode in VS Code.

---

## Governance

**Definition**
The set of rules, documents, and processes that control how agents behave and how decisions are made within a system.

**Characteristic**
Good governance makes agent behavior predictable, auditable, and correctable. It is the difference between a well-run system and an unpredictable one.

**Analogy**
Corporate governance: the policies and oversight mechanisms that prevent any single actor from doing whatever they want.

**In this workspace**
The `governance/` folder contains the constitution. Charters and boundaries extend this governance layer to individual agents.

---

## Hallucination

**Definition**
When a language model generates text that is factually incorrect, fabricated, or not grounded in the provided context — stated with false confidence.

**Characteristic**
A structural property of language models: they predict plausible-sounding text, not necessarily true text. Hallucinations can look indistinguishable from correct output.

**Analogy**
A witness who confidently fills in gaps in their memory with plausible-but-invented details.

**In this workspace**
The constitution explicitly prohibits fabricated citations and invented evidence. Templates include traceability fields to force grounding in sources.

---

## Human-in-the-Loop

**Definition**
A design pattern in which a human is required to review, approve, or correct agent output before it takes effect.

**Characteristic**
Reduces risk of autonomous errors. The degree of human involvement can be tuned per task type.

**Analogy**
A pilot who remains responsible for the aircraft even while the autopilot is engaged.

**In this workspace**
Defined in the constitution under "Human Authority": humans retain final authority over arguments, interpretations, conclusions, citations, and submissions.

---

## Inference

**Definition**
The process by which a language model generates a response: given an input (prompt + context), the model computes the most probable next tokens.

**Characteristic**
Inference is stateless — the model has no memory between calls unless context is explicitly provided. Every invocation is a fresh computation.

**Analogy**
A very sophisticated autocomplete: given everything before the cursor, predict what comes next.

**In this workspace**
Every time Copilot responds to a prompt or executes an agent step, it performs inference. The quality of the output depends entirely on the quality of the context provided.

---

## Intent

**Definition**
A named, callable capability of an agent. An intent describes what the agent can *do* when invoked with specific input.

**Characteristic**
Intents make agent capabilities explicit and addressable. They are analogous to functions or API endpoints.

**Analogy**
A menu item at a restaurant: a named option with known inputs (your order) and expected output (the dish).

**In this workspace**
`create-agent` is the intent defined for agent-smith. It is specified in the contract and invocable via the corresponding prompt template.

---

## Large Language Model (LLM)

**Definition**
A neural network trained on large volumes of text data, capable of generating, summarizing, translating, and reasoning over natural language.

**Characteristic**
LLMs have no inherent goals, memory, or agency. They respond to prompts. Agentic AI *wraps* an LLM in a control loop to create goal-directed behavior.

**Analogy**
A very well-read generalist who can converse on almost any topic — but has no agenda of their own unless you give them one.

**In this workspace**
GitHub Copilot is powered by an LLM. The agent definitions in this workspace provide the structure that turns LLM responses into purposeful, governed actions.

---

## Placeholder

**Definition**
A named variable in a template, written as `{{VARIABLE_NAME}}`, that must be replaced with a concrete value before the template is used.

**Characteristic**
Placeholders make templates reusable and prevent accidental use of example values. They make required inputs visible.

**Analogy**
A form with blank fields: the form is the same for everyone, but the filled-in values differ per instance.

**In this workspace**
All files under `agents/agent-smith/templates/` use `{{PLACEHOLDER}}` syntax. E.g. `{{AGENT_NAME}}`, `{{AGENT_SLUG}}`, `{{INTENT_NAME}}`.

---

## Prompt

**Definition**
The text input provided to a language model that instructs it what to do, provides context, and shapes the response.

**Characteristic**
Prompts are the primary interface to an LLM. Prompt quality directly determines output quality. Structured prompts (with frontmatter, roles, constraints) produce more reliable results.

**Analogy**
A briefing document: the more complete and precise it is, the better the result.

**In this workspace**
`agents/agent-smith/templates/prompt.template.md` defines the reusable prompt structure for invoking agent-smith. `.github/prompts/` holds shared prompt templates.

---

## Prompt Injection

**Definition**
An attack in which malicious content in external data (files, web pages, user input) causes an LLM to override its instructions and behave in unintended ways.

**Characteristic**
A security risk specific to agentic systems that process external content. Difficult to fully prevent; mitigated by sandboxing, human review, and explicit governance.

**Analogy**
A letter slipped into a manager's inbox that, when read, makes them think new instructions came from their boss.

**In this workspace**
A known risk when agents read external files or web content. The constitution's requirement for human oversight partially mitigates this.

---

## Source Injection

**Definition**
The deliberate inclusion of relevant documents, facts, or context into a prompt before sending it to an LLM, so that the model reasons from that content rather than from training data alone.

**Characteristic**
Improves accuracy and traceability. Reduces hallucination. The model's output is grounded in the injected sources, which can be cited and verified.

**Analogy**
Handing a researcher the exact papers they should use before asking them to write a summary — rather than asking them to rely on memory.

**In this workspace**
The `context.base` field in prompt templates (e.g. `{{CONSTITUTION_REF}}`) specifies which documents are injected when an agent is invoked.

---

## Template

**Definition**
A reusable document structure with defined sections and placeholder variables, used to generate consistent instances of a document type.

**Characteristic**
Templates enforce structure and make required information explicit. They separate *form* (the template) from *content* (the instance).

**Analogy**
A contract template used by a law firm: the clauses are fixed, only the names and dates change per client.

**In this workspace**
`agents/agent-smith/templates/` contains `charter.template.md`, `agent-contract.template.md`, and `prompt.template.md`.

---

## Traceability

**Definition**
The ability to track the origin of a decision, output, or claim back to its source: who produced it, from what input, under what rules.

**Characteristic**
Essential for scientific integrity and safe AI systems. Without traceability, errors cannot be diagnosed and outputs cannot be trusted.

**Analogy**
An audit trail: the log that shows every transaction, who approved it, and when.

**In this workspace**
The `traceability.herkomstpositie` field in contracts records the origin position of each agent action. The constitution mandates traceability as a core principle.

---

## VS Code (Visual Studio Code)

**Definition**
A free, open-source code editor developed by Microsoft. Extensible via plugins and used here as the development environment for the thesis workspace.

**Characteristic**
VS Code provides the interface through which GitHub Copilot is accessed. In agent mode, it allows Copilot to read files, edit code, and execute multi-step tasks directly in the workspace.

**Analogy**
A cockpit: the physical interface through which the pilot (human) and autopilot (Copilot) together operate the aircraft (the workspace).

**In this workspace**
The entire workspace is managed in VS Code. Agent invocations, file edits, and template instantiation all happen here via Copilot's chat and agent interfaces.
