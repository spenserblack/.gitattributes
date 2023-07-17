#!/bin/sh
# Copies the data from Common.gitattributes to .gitattributes, keeping the
# header
HEADER="# NOTE: You probably don't want to look at this, but the *named* .gitattributes files
*.gitattributes linguist-detectable linguist-language=Git-Attributes"
echo "$HEADER" > .gitattributes
echo "" >> .gitattributes
cat "$(dirname $0)/Common.gitattributes" >> .gitattributes
