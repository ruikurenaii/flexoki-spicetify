#!/bin/bash

# disregard this one, please.

INPUT="$1"

cat <<EOF > "user.css"
* {
    font-family: '$INPUT' !important;

:root {
    --font-family: '$INPUT' !important;
    --glue-font-family: '$INPUT' !important;
}
EOF