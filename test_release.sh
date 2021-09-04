#!/bin/bash

echo "hello" > test.iso

ls .
mkdir ./isobuild
find . -type f -name "*.iso" ! -path "./isobuild/*" -exec zip -r -0 -s 1g ./isobuild/{}.zip {} \;
ls ./isobuild
