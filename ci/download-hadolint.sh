#!/bin/env bash

SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
HADOLINT_LOCATION="$SCRIPTPATH/hadolint"

if test -f "$HADOLINT_LOCATION"; 
then
    echo "hadolint already there."
else
    echo "dowloading hadolint..."
    wget https://github.com/hadolint/hadolint/releases/download/v1.18.0/hadolint-Linux-x86_64 -O "$SCRIPTPATH/hadolint"
    echo "hadolint ready."
fi


