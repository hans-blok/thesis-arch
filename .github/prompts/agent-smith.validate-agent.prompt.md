----
agent intent: agent-smith.validate-agent

description: >
  Validate that all required artifacts for an agent are present and contain no unresolved placeholders.

input:
  required:
    - agent_slug:          # technical identifier of the agent to validate
  optional:
    - strict:              # if true, treat warnings as errors (default: false)

instructions: |
  Read and follow:
  - agents/agent-smith/contracts/validate-agent.contract.md
----
