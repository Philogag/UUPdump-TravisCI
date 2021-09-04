#!/bin/bash

# Set up git user name and tag this commit
git config --local user.name "philogag"
git config --local user.email "philogag@qq.com"
git tag $(date +%Y-%m-%d_%H-%M)