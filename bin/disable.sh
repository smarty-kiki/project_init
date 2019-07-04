#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR=$SCRIPT_DIR/..
TARGET_DIR=/usr/local/bin

function disable
{
    rm $TARGET_DIR/$1
    mv $TARGET_DIR/$1.bak $TARGET_DIR/$1
}

disable project_init
