----
agent:
  id: 200
  name: agent-architect

intent:
  name: verify-boundary

charter:
  reference: agents/agent-architect/agent-charter.md

boundary:
  reference: agents/agent-architect/agent-boundary.md

input:
  required:
    - agent_slug          # agent whose boundary to verify
  optional:
    - strict              # if true, fail on any ambiguity

output:
  type: verification-report
  format: markdown
  path: agents/reports/
  filename: "{jjjj}.{mm}.{dd}.{digest-5}.verify-boundary.md"
  result: pass | conflict | incomplete

constraints:
  - must_comply_with: governance/constitution.md
  - read_only: true

traceability:
  herkomstpositie: controlerend
----

## Instruction

- Read `agents/{agent_slug}/agent-boundary.md`
- Read all other `agent-boundary.md` files in the workspace
- Report any In scope clause that overlaps with another agent's In scope
- Report any responsibility gap: present in neither In scope nor Out of scope
- Do not modify any file
- Return a structured report: conflicts, gaps, and a pass/fail verdict
- Write the report to `agents/reports/` using the filename format `jjjj.mm.dd.<digest-5>.<agent-intent-name>.md`
  - `jjjj.mm.dd` is the current date (e.g. `2026.05.09`)
  - `<digest-5>` is a 5-character lowercase alphanumeric hash derived from the report content
  - `<agent-intent-name>` is `verify-boundary`
