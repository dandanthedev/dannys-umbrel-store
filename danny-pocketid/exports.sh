SECRET_FILE="${APP_DATA_DIR}/secret.txt"

if [ -f "$SECRET_FILE" ]; then
    export APP_POCKETID_SECRET="$(cat "$SECRET_FILE")"
else
    export APP_POCKETID_SECRET="$(openssl rand -base64 32)"
    echo "$APP_POCKETID_SECRET" > "$SECRET_FILE"
fi

export APP_URL="https://${DEVICE_DOMAIN_NAME}:1411"