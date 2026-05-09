----
agent:
  id: {{AGENT_ID}}
  name: {{AGENT_SLUG}}

intent:
  name: {{INTENT_NAME}}

charter:
  reference: agents/{{AGENT_SLUG}}/agent-charter.md

boundary:
  reference: agents/{{AGENT_SLUG}}/agent-boundary.md

input:
  required:
    - {{INPUT_REQUIRED_1}}
    - {{INPUT_REQUIRED_2}}
  optional: []

output:
  type: {{OUTPUT_TYPE}}
  template: {{OUTPUT_TEMPLATE}}

constraints:
  - must_comply_with: {{CONSTITUTION_REF}}
  - must_use_boundary_first: true

traceability:
  herkomstpositie: {{TRACEABILITY_POSITION}}
----  

## Instruction

- Always derive behavior from the **agent charter**
- The charter defines:
  - mission
  - authority
  - boundaries
- The contract defines:
  - callable intent
  - input/output

Never derive meaning from the prompt.