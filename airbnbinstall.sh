#!/bin/bash

(
    export PKG=eslint-config-airbnb;
    npm info "$PKG@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs sudo npm install -g "$PKG@latest"
)

sudo npm install -g babel-eslint
