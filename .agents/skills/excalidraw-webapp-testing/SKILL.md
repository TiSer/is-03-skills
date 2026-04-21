---
name: excalidraw-webapp-testing
description: Use when validating Excalidraw UI behavior, action wiring, and regressions in canvas interactions before claiming a fix or feature is complete.
---

# Excalidraw Webapp Testing

## Overview

Use this skill to test Excalidraw changes with fast feedback first, then broader verification. Focus on behavior, not only snapshots.

## When to use

- After implementing or changing UI behavior in `packages/excalidraw/` or `excalidraw-app/`.
- When fixing regressions tied to actions, keyboard shortcuts, or canvas interactions.
- Before opening a PR for feature or bugfix work.

## Test workflow

1. Run fast checks first:
   - `yarn test:typecheck`
   - targeted tests for touched action/component files
2. Validate behavior through realistic interaction paths:
   - trigger toolbar/menu/shortcut entry points
   - verify action side effects in app state and selected elements
3. Run broader checks before completion:
   - `yarn test:app` (or scoped vitest runs first, then broader run)
4. If failures appear, isolate by action and re-run only affected tests, then repeat full relevant suite.

## Excalidraw-specific checks

- Confirm the UI trigger uses `actionManager.executeAction(...)`, not direct state mutation.
- Verify keyboard and pointer paths produce consistent results.
- Check undo/redo behavior after action changes.
- Ensure view mode restrictions are respected for action handlers.

## Common mistakes

- Running only one happy-path test and skipping keyboard or shortcut paths.
- Verifying only render output without asserting action behavior.
- Claiming completion without typecheck + relevant test evidence.

## References

- `packages/excalidraw/actions/manager.tsx`
- `packages/excalidraw/actions/*.test.tsx`
- `excalidraw-app/`
