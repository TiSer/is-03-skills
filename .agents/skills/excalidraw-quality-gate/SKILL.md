---
name: excalidraw-quality-gate
description: Run fast and safe quality checks for Excalidraw changes using a fixed command order and clear fallback strategy. Use when implementing features, fixing bugs, or before opening a PR.
---

# Excalidraw Quality Gate

## When to use this skill

Use when code was changed and you need confidence that it is safe to submit.

## Guardrails (DO NOT / DO)

- DO NOT run full expensive checks first for small local edits.
- DO NOT skip failing checks.
- DO run a fast gate first, then expand only when needed.
- DO fix or report blockers with the exact failing command output.

## Step-by-step

1. Run fast checks from `scripts/quick-checks.sh`.
2. If fast checks fail, fix issues and rerun the script.
3. If fast checks pass and change scope is large, run `yarn test:all`.
4. Report:
   - commands executed,
   - pass/fail status,
   - unresolved blockers.

## Utility script

- Execute: `bash .agents/skills/excalidraw-quality-gate/scripts/quick-checks.sh`
- The script runs typecheck, lint, and app tests in a predictable order.

## Output format

Use this template:

```markdown
Quality Gate Result
- Scope: <short description>
- Commands:
  - <command 1>: PASS/FAIL
  - <command 2>: PASS/FAIL
- Decision: PASS / BLOCKED
- Notes: <fixes or blockers>
```
