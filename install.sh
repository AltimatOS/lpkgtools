#!/bin/bash

set -e

for DIR in /System/bin /System/cfg/lpkgtools /System/lib/lpkgtools; do
    echo "Creating $DIR"
    mkdir -p $DIR
done

echo "Installing: /System/bin/mkpkg"
install -m 755 -o Administrator -g Administrators bin/mkpkg /System/bin/mkpkg
echo "Installing: /System/cfg/lpkgtools/configuration"
install -m 644 -o Administrator -g Administrators cfg/lpkgtools/configuration /System/cfg/lpkgtools/
echo "Installing: /System/lib/lpkgtools/functions"
install -m 644 -o Administrator -g Administrators lib/lpkgtools/functions /System/lib/lpkgtools/


