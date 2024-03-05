#!/bin/env bash
# Connect to the Steam platform and download the latest version of the Assetto Corsa Competizione
# dedicated server. Set the environment variables STEAM_USER and STEAM_PASSWORD.

if [[ ! $STEAM_USER ]] || [[ ! $STEAM_PASSWORD ]]; then
    echo "set environment variables STEAM_USER and STEAM_PASWORD to continue."
    exit 1
fi

if ! command -v steamcmd &> /dev/null; then
    echo "install the latest version of steamcmd to continue."
    exit 2
fi

steamcmd +@sSteamCmdForcePlatformType windows +login ${STEAM_USER} ${STEAM_PASSWORD} 1430110 +quit
