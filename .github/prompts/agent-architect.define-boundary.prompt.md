----
agent intent: agent-architect.define-boundary

description: >
  Define the boundary of a new agent: what it is responsible for and what it is not.

input:
  required:
    - agent_slug:          # technical identifier for the agent
    - responsibilities:    # stated list of responsibilities
  optional:
    - charter_file:        # path to agent-charter.md if available

instructions: |
  Read and follow:
  - agents/agent-architect/contracts/define-boundary.contract.md
----
