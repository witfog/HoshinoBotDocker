#!/bin/bash
set -ex

# Create config folder if user not mount.
[[ -d hoshino/config ]] || mkdir -p hoshino/config

# Copy config files from config_example to config in first launch. Skip if config files is already mount by user.
[[ -d hoshino/config_example ]] && mv -vn hoshino/config_example/* hoshino/config && rm -rf hoshino/config_example

# Copy modules from modules_temp to modules in first launch. Skip if modules is already mount by user.
[[ -d hoshino/modules_temp ]] && mv -vn hoshino/modules_temp/* hoshino/modules && rm -rf hoshino/modules_temp

# Install requirements for custom plugins.
if [[ -d hoshino/requirements ]] 
then
    cd hoshino/requirements
    for f in *.txt
    do
        echo "Installing $f ..."
        pip install -f $f
    done
    cd -
fi

python run.py