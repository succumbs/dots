#!/bin/bash

file=".config/vscode/extensions.txt"

while IFS= read -r line; do
    [ -z "$line" ] && continue
    code --install-extension "$line"
done < "$file"