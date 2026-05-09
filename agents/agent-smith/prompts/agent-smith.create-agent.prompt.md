----
agent intent: agent-smith.create-agent

description: >
  Parameterized agent creation.

input:
  required:
    - agent_slug:          # technical identifier, e.g. "agent-reviewer"
    - agent_name:          # human-readable name, e.g. "Agent Reviewer"
    - boundary_file:       # path to the approved agent-boundary.md
    - charter_file:        # path to the approved agent-charter.md
  optional:
    - agent_id:            # numeric ID; auto-assigned if omitted
    - intents:             # list of intents to scaffold contracts for

instructions: |
  Read and follow:
  - agents/agent-smith/contracts/create-agent.contract.md
----
