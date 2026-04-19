#!/usr/bin/env bash
set -euo pipefail

CLASH_BASE_DIR="${CLASH_BASE_DIR:-/opt/clashctl}"

if [ ! -f "${CLASH_BASE_DIR}/.env" ]; then
    echo "missing ${CLASH_BASE_DIR}/.env" >&2
    exit 1
fi

. "${CLASH_BASE_DIR}/scripts/cmd/clashctl.sh"

to_bool() {
    case "${1:-}" in
    1 | true | TRUE | yes | YES | on | ON)
        echo "true"
        ;;
    *)
        echo "false"
        ;;
    esac
}

: "${CLASH_MIXED_PORT:=7890}"
: "${CLASH_DASHBOARD_PORT:=9090}"
: "${CLASH_ALLOW_LAN:=true}"

"$BIN_YQ" -i ".\"mixed-port\" = ${CLASH_MIXED_PORT}" "$CLASH_CONFIG_MIXIN"
"$BIN_YQ" -i ".\"external-controller\" = \"0.0.0.0:${CLASH_DASHBOARD_PORT}\"" "$CLASH_CONFIG_MIXIN"
"$BIN_YQ" -i ".\"allow-lan\" = $(to_bool "$CLASH_ALLOW_LAN")" "$CLASH_CONFIG_MIXIN"

if [ -n "${CLASH_SECRET:-}" ]; then
    "$BIN_YQ" -i '.secret = strenv(CLASH_SECRET)' "$CLASH_CONFIG_MIXIN"
fi

if [ -n "${CLASH_AUTH:-}" ]; then
    "$BIN_YQ" -i '.authentication = [strenv(CLASH_AUTH)]' "$CLASH_CONFIG_MIXIN"
fi

if [ -n "${CLASH_CONFIG_URL:-}" ]; then
    _download_config "$CLASH_CONFIG_BASE" "$CLASH_CONFIG_URL"
fi

_merge_config
clashon

LOG_FILE="/var/log/${KERNEL_NAME}.log"
touch "$LOG_FILE"
exec tail -F "$LOG_FILE"
