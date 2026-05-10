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
    - agent_slug          # technical identifier, e.g. "agent-reviewer"; used to locate agents/{agent_slug}/

output:
  type: agent-folder
  artifacts:
    - agents/{agent_slug}/agent-charter.md
    - agents/{agent_slug}/agent-boundary.md
    - agents/{agent_slug}/contracts/
    - agents/{agent_slug}/templates/

constraints:
  - must_comply_with: governance/constitution.md
  - must_read_boundary_before_generating: true
  - boundary_must_be_approved: true
  - intents_derived_from_boundary: true
  - may_not_modify_existing_agents: true

traceability:
  herkomstpositie: uitvoerend
----

## Instruction

- Locate `agents/{agent_slug}/agent-boundary.md` — this file must already exist in the folder
- Read the boundary file before generating any artifact
- Derive the intents to scaffold from the boundary file; do not accept intents as input
- Use templates from `agents/agent-smith/templates/` as the basis for all generated artifacts
- Replace all `{{PLACEHOLDER}}` values with values read from the boundary file or derived from `agent_slug`
- Do not invent, assume, or derive values that were not present in the boundary file
- Do not modify any existing agent's artifacts
- After creation, confirm all required artifacts are present and structurally complete
