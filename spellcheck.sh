#!/bin/sh

find . -name \*.tex | \
  awk '{print "echo "$0" && detex "$0" | aspell -a list -d en_US --personal=./aspell.ignore"}' | \
  bash | \
  grep -Ev '(^$|^\*)' > \
  misspelled.log
