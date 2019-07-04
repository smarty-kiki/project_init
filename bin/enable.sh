#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR=$SCRIPT_DIR/..
TARGET_DIR=/usr/local/bin

function enable
{
    mv $TARGET_DIR/$1 $TARGET_DIR/$1.bak
    ln -s $PROJECT_DIR/$1 $TARGET_DIR/$1
}

enable project_init
