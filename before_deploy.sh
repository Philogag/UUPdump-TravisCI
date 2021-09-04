#!/bin/bash

# Split ISO files
mkdir ./isobuild
find . -type f -name "*.iso" ! -path "./isobuild/*" -exec zip -r -0 -s 1g ./isobuild/{}.zip {} \;
echo ""
echo "Built:"
ls ./isobuild

# Set up git user name and tag this commit
git config --local user.name "philogag"
git config --local user.email "philogag@qq.com"
git tag $(date +%Y-%m-%d_%H-%M)