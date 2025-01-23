#!/bin/bash

# Argument $1 = yyyymmdd

today=$(date +%Y%m%d)
deadline=$(date --date=$1 +%Y%m%d)

today_seconds=$(date --date=$today +%s)
deadline_seconds=$(date --date=$deadline +%s)

seconds_remaining=$((deadline_seconds - today_seconds))

# last day included (+1)
days_remaining=$(((seconds_remaining / (60*60*24)) + 1))

echo $days_remaining
