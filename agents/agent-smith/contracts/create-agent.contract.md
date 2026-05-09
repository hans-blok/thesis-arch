----
agent:
  id: 100
  name: agent-smith

intent:
  name: create-agent

charter:
  reference: agents/agent-smith/agent-charter.md

boundary:
  reference: agents/agent-smith/agent-boundary.md

input:
  required:
    - agent_slug          # technical identifier, e.g. "agent-reviewer"
    - agent_name          # human-readable name, e.g. "Agent Reviewer"
    - boundary_file       # path to the approved agent-boundary.md
    - charter_file        # path to the approved agent-charter.md
  optional:
    - agent_id            # numeric ID; auto-assigned if omitted
    - intents             # list of intents to scaffold contracts for

output:
  type: agent-folder
  artifacts:
    - agents/{agent_slug}/agent-charter.md
    - agents/{agent_slug}/agent-boundary.md   # placed, not generated; source: agent-architect
    - agents/{agent_slug}/contracten/
    - agents/{agent_slug}/templates/

constraints:
  - must_comply_with: governance/constitution.md
  - must_use_boundary_first: true
  - boundary_must_be_approved: true
  - charter_must_be_approved: true
  - may_not_modify_existing_agents: true

traceability:
  herkomstpositie: uitvoerend
----

## Instruction

- Read the approved `boundary_file` before generating any artifact
- Read the approved `charter_file` to understand mission and authority
- Use templates from `agents/agent-smith/templates/` as the basis for all generated artifacts
- Replace all `{{PLACEHOLDER}}` values with the provided input values
- Do not invent, assume, or derive values that were not explicitly provided
- Do not modify any existing agent's artifacts
- After creation, confirm all required artifacts are present and structurally complete
