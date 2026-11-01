#!/bin/sh
set -eu

tab=$("$HERDR_BIN_PATH" tab create --workspace "$HERDR_ACTIVE_WORKSPACE_ID" --label "$1" --focus)
pane=$(printf '%s\n' "$tab" | jq -er '.result.root_pane.pane_id')
"$HERDR_BIN_PATH" pane run "$pane" "$@"
