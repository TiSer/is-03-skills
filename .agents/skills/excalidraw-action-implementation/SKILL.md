---
name: excalidraw-action-implementation
description: Implement or modify Excalidraw actionManager actions with consistent behavior, naming, and UI wiring. Use when adding a new action, changing existing action logic, or connecting UI controls to actions.
---

# Excalidraw Action Implementation

## When to use this skill

Use when the task includes `actionManager`, action handlers, or UI triggers that dispatch actions.

## Guardrails (DO NOT / DO)

- DO NOT mutate app state directly in UI components.
- DO NOT introduce external state libraries.
- DO route state changes through `actionManager.dispatch()`.
- DO keep action names clear and aligned with existing action naming.

## Step-by-step

1. Locate related action files in `packages/excalidraw/actions/`.
2. Implement or update action logic with strict TypeScript types.
3. Wire UI trigger points to dispatch the action.
4. Add or update tests around action behavior.
5. Run typecheck and relevant tests.

## References

- Read [ACTION_PATTERNS.md](references/ACTION_PATTERNS.md) for checklists and implementation cues.
