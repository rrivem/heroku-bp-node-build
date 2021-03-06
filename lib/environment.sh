#!/bin/bash

function export_env_dir() {
	local env_dir="$1"
	local blacklist_regex="${2:-'^(PATH|GIT_DIR|CPATH|CPPATH|LD_PRELOAD|LIBRARY_PATH|LANG)$'}"

	if [[ -d "$env_dir" ]]; then
		for e in $(ls "$env_dir"); do
			echo "$e=$(cat $env_dir/$e)"
			echo "$e" | grep -qvE "$blacklist_regex" && export "$e=$(cat $env_dir/$e)"
			:
		done
	fi
}
