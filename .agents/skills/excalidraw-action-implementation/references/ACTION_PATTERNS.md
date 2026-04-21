# Action Patterns Reference

## Action design checklist

- Confirm the action has one clear responsibility.
- Keep payload shape minimal and typed.
- Return predictable changes for the same input state.
- Avoid side effects inside pure calculation paths.

## Integration checklist

- Action is registered and discoverable in the existing action flow.
- UI dispatch passes only required payload.
- Keyboard shortcut behavior is preserved if applicable.
- Undo/redo behavior is validated for the new state transition.

## Testing checklist

- Unit-level behavior for input/output transition.
- Regression test for prior behavior that must stay unchanged.
- Edge case test for empty selection or missing targets.
