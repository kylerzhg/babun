#!/bin/bash
set -e -f -o pipefail
source "/usr/local/etc/babun.instance"
source "$babun_tools/script.sh"

src="$babun_source/babun-core/plugins/pact/src"
dest="$babun/home/pact/.pact"

/bin/cp -rf $src/pact /usr/local/bin
chmod 755 /usr/local/bin/pact

if [ ! -d "$dest" ]; then
    mkdir -p "$dest"
fi

if [ ! -f "$dest/pact.repo" ]; then
    /bin/cp "$src/pact.repo" "$dest"
fi
