#! /usr/bin/env bash

base_url="https://docs.jaredwolff.com/files/newtmgr"

function fetch_and_unzip() {
  temp_dir=$(mktemp -d)
  wget "$base_url/$1/newtmgr.zip" -O "$temp_dir/newtmgr.zip"
  unzip "$temp_dir/newtmgr.zip" -d "$temp_dir"
  cp "$temp_dir/newtmgr" ./bin/newtmgr-$1
}

fetch_and_unzip "linux"
fetch_and_unzip "darwin"
