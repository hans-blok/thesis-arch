----
agent:
  id: 100
  name: agent-smith

intent:
  name: validate-agent

charter:
  reference: agents/agent-smith/agent-charter.md

boundary:
  reference: agents/agent-smith/agent-boundary.md

input:
  required:
    - agent_slug          # technical identifier of the agent to validate
  optional:
    - strict              # if true, treat warnings as errors (default: false)

output:
  type: validation-report
  format: markdown
  path: agents/reports/
  filename: "{jjjj}.{mm}.{dd}.{digest-5}.validate-agent.md"
  fields:
    - agent_slug
    - artifacts_present   # list of found artifacts
    - artifacts_missing   # list of missing required artifacts
    - placeholders_unresolved  # list of unreplaced {{PLACEHOLDER}} values found
    - result              # "pass" | "fail"
    - remarks             # optional notes

constraints:
  - must_comply_with: governance/constitution.md
  - must_use_boundary_first: true
  - may_not_modify_artifacts: true   # validation is read-only
  - scope_limited_to: agents/{agent_slug}/

traceability:
  herkomstpositie: controlerend
----

## Instruction

- Read all artifacts under `agents/{agent_slug}/`
- Check that the following files exist and are non-empty:
  - `agent-charter.md`
  - `agent-boundary.md`
  - at least one file under `contracten/`
- Scan all files for unresolved `{{PLACEHOLDER}}` patterns
- Report missing artifacts and unresolved placeholders in the output
- Do not modify any file during validation
- Return result as `pass` only when all required artifacts are present and no unresolved placeholders remain
- Write the report to `agents/reports/` using the filename format `jjjj.mm.dd.<digest-5>.<agent-intent-name>.md`
  - `jjjj.mm.dd` is the current date (e.g. `2026.05.09`)
  - `<digest-5>` is a 5-character lowercase alphanumeric hash derived from the report content
  - `<agent-intent-name>` is `validate-agent`
