#!/bin/bash

cd $(dirname "$0")

# nodemon --watch . --ext js,jsx,ts,tsx,json --exec "yarn build; next start"
# yarn build
next dev