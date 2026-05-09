----
agent:
  id: 200
  name: agent-architect

intent:
  name: define-boundary

charter:
  reference: agents/agent-architect/agent-charter.md

boundary:
  reference: agents/agent-architect/agent-boundary.md

input:
  required:
    - agent_slug          # technical identifier for the agent
    - responsibilities    # stated list of responsibilities
  optional:
    - charter_file        # path to agent-charter.md if available

output:
  type: boundary-document
  artifacts:
    - agents/{agent_slug}/           # folder created if it does not exist
    - agents/{agent_slug}/agent-boundary.md

constraints:
  - must_comply_with: governance/constitution.md
  - must_verify_no_overlap: true
  - boundary_must_derive_from_responsibilities: true

----

## Instruction

- Create the folder `agents/{agent_slug}/` if it does not already exist
- Read `governance/constitution.md` before defining any boundary
- Read all existing `agent-boundary.md` files to check for overlap
- Derive In scope and Out of scope sections strictly from the stated responsibilities
- Do not invent responsibilities not present in the input
- After writing `agent-boundary.md`, verify no clause conflicts with an existing boundary
- Register the new boundary in `boundary-registry.md` if it exists
