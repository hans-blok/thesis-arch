----
agent intent: agent-architect.verify-boundary

description: >
  Verify that an agent's boundary contains no conflicts with other agent boundaries.

input:
  required:
    - agent_slug:          # technical identifier of the agent to verify
  optional:
    - strict:              # if true, fail on any ambiguity

instructions: |
  Read and follow:
  - agents/agent-architect/contracts/verify-boundary.contract.md
----
