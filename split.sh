#!/bin/bash

# Split ISO files
mkdir ./isobuild
find . -type f -name "*.ISO" ! -path "./isobuild/*" -exec zip -r -0 -s 1g ./isobuild/{}.zip {} \;
echo ""
echo "Built:"
ls ./isobuild