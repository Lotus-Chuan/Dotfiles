#!/usr/bin/env bash
cp `ls -A | grep '^\.' | grep -v '\.git$'` ~
