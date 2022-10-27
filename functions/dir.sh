#!/bin/sh

script_dir() {
  echo "$(dirname "$(realpath "$0")")"
}
