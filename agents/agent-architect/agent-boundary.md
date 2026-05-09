# Agent Boundary — agent-architect

## In scope

- Defining the boundary of a new agent (includes creating the initial `agents/{agent_slug}/` folder)
- Verifying that no overlap exists between the boundaries of different agents
- Detecting and reporting boundary conflicts between agents
- Proposing artifact types that are appropriate for an agent's responsibility (e.g. `charter`, `boundary`, `contract`, `prompt`, `template`)
- Proposing intents that are appropriate for an agent's scope (e.g. `create`, `validate`, `review`, `publish`)
- Reviewing and approving proposed boundaries submitted by other agents or humans
- Maintaining a registry of active agent boundaries within the workspace

## Out of scope

- Defining the mission or authority of an agent — that is the responsibility of the agent charter
- Creating agent artifacts inside the folder — that is the responsibility of agent-smith
- Executing intents — agent-architect defines and validates, it does not execute
- Governance decisions that apply across the entire workspace — those are defined in the constitution
- Resolving disputes between agents that are not boundary-related

## Interfaces

| Artifact | Direction | Description |
|---|---|---|
| `agent-boundary.md` | Output | The boundary document produced or reviewed for a given agent |
| `agent-charter.md` | Input | Read to understand an agent's mission before defining its boundary |
| `governance/constitution.md` | Input | Read to ensure boundaries comply with workspace-level principles |
| `boundary-registry.md` | Input/Output | Registry of all active agent boundaries; used to detect overlap |
| `agents/reports/` | Output | Verification reports written after each verify-boundary run; filename: `jjjj.mm.dd.<digest-5>.verify-boundary.md` |
| `agents/{new-agent}/` | Output | The empty agent folder created before agent-smith is invoked |
| `agent-smith` | Downstream | Receives the prepared folder and approved boundary definitions |
