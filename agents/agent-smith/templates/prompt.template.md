----
agent:
  id: {{AGENT_ID}}
  name: {{AGENT_SLUG}}

intent:
  name: {{INTENT_NAME}}
  description: {{INTENT_DESCRIPTION}}

references:
  agent_contract: .github/contracts/{{AGENT_SLUG}}.{{INTENT_NAME}}.yaml

context:
  base:
    - {{CONSTITUTION_REF}}
  additional: []

input:
  # define invocation-specific input here
  {{INPUT_KEY_1}}: ""
  {{INPUT_KEY_2}}: ""

execution:
  mode: {{EXECUTION_MODE}}
----
