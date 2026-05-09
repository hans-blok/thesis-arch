# Agent Boundary — agent-smith

## In scope

- Populating an existing agent folder with all required artifacts
- Generating the required agent artifacts: `agent-charter.md`, `contracten/`, prompt templates
- Placing the pre-approved `agent-boundary.md` (received from agent-architect) in the correct location
- Instantiating agent templates with the correct placeholder values
- Registering the newly created agent in the workspace (nav, registry)
- Validating that all required artifacts are present and structurally complete after creation
- Applying the `create-agent` intent as defined in its contract

## Out of scope

- Defining or approving the boundary of an agent — that is the responsibility of agent-architect
- Defining the mission or authority of an agent — that is determined before agent-smith is invoked
- Detecting overlap between agent boundaries — that is the responsibility of agent-architect
- Proposing artifact types or intents — that is the responsibility of agent-architect
- Governance decisions that apply across the entire workspace — those are defined in the constitution
- Executing any intent other than those defined in its own contracts

## Interfaces

| Artifact | Direction | Description |
|---|---|---|
| `agent-boundary.md` (approved) | Input | Received from agent-architect; defines what the new agent may and may not do |
| `agent-charter.md` (approved) | Input | Received from human or agent-architect; defines mission and authority |
| `agents/agent-smith/templates/` | Input | Template files used to generate agent artifacts |
| `agents/{new-agent}/` | Input/Output | Existing folder (created by agent-architect); agent-smith writes artifacts into it |
| `agents/reports/` | Output | Validation reports written after each validate-agent run; filename: `jjjj.mm.dd.<digest-5>.validate-agent.md` |
| `governance/constitution.md` | Input | Read to ensure created agents comply with workspace principles |
| `agent-architect` | Upstream | Provides approved boundary definitions that agent-smith acts on |
