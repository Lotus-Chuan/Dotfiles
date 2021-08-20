#!/usr/bin/env bash
for file in .*; do
	if [[ -f "${file}" ]]; then
   	copy_file=$(grep -v '\.git$' "${file}")
  	if [[ ${copy_file} != "" ]]; then
		  cp "${file}" ~
  	fi
  fi
done
