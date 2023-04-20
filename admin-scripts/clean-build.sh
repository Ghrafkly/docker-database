#! /bin/bash

SCRIPT_PATH="$(dirname "$0")"

bash "$SCRIPT_PATH/clean.sh"
bash "$SCRIPT_PATH/build.sh"