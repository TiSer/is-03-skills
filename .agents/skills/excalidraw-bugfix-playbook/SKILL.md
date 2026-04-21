---
name: excalidraw-bugfix-playbook
description: Diagnose and fix Excalidraw bugs with a reproducible workflow from report to verification. Use when triaging regressions, runtime issues, UI inconsistencies, or failing tests.
---

# Excalidraw Bugfix Playbook

## When to use this skill

Use when a bug report, failing test, or regression needs a reliable fix process.

## Guardrails (DO NOT / DO)

- DO NOT patch blindly without reproducing the issue.
- DO NOT mix unrelated refactors into a bugfix.
- DO create a deterministic reproduction case first.
- DO verify the fix with focused tests and impacted checks.

## Step-by-step

1. Reproduce and capture exact steps.
2. Identify the smallest failing unit (action, component, renderer, scene).
3. Implement minimal fix that addresses root cause.
4. Add regression test near the affected module.
5. Validate fix with targeted command, then run broader checks if needed.

## Report format

```markdown
Bugfix report
- Repro: <steps>
- Root cause: <what was wrong>
- Fix: <what changed>
- Verification: <commands and results>
```
