---
name: excalidraw-action-implementation
description: Implement or modify Excalidraw actionManager actions with consistent behavior, naming, and UI wiring. Use when adding a new action, changing existing action logic, or connecting UI controls to actions.
---

# Excalidraw Action Implementation

## When to use this skill

Use when the task includes `actionManager`, action handlers, or UI triggers that execute actions.

## Guardrails (DO NOT / DO)

- DO NOT mutate app state directly in UI components.
- DO NOT introduce external state libraries.
- DO locate `packages/excalidraw/actions/manager.tsx` and route changes through the real executor: `actionManager.executeAction(action, source?, value?)` (use the exact signature in code if it changes).
- DO keep action names clear and aligned with existing action naming.

## Step-by-step

1. Open `packages/excalidraw/actions/manager.tsx` and verify the current `executeAction(...)` signature before wiring anything.
2. Locate and edit the typed action handler files in `packages/excalidraw/actions/*`.
3. Implement or update action logic with strict TypeScript types in those action files.
4. Wire UI trigger points to call `actionManager.executeAction(...)` with the correct action and payload/value shape.
5. Add or update tests around action behavior.
6. Run typecheck and relevant tests.

## References

- Read [ACTION_PATTERNS.md](references/ACTION_PATTERNS.md) for checklists and implementation cues.
