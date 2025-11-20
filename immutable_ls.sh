#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 /path/to/directory"
    exit 1
fi

TARGET="$1"

if [ ! -e "$TARGET" ]; then
    echo "Error: Path '$TARGET' does not exist."
    exit 1
fi

echo "Date/Time | Immutable | File/Directory"
echo "--------------------------------------"

find "$TARGET" -exec bash -c '
for f; do
    # Epoch time of last modification
    EPOCH=$(stat -c "%Y" "$f")
    # Convert to ls-style date (e.g., Nov 13 03:24)
    DATE=$(date -d @"$EPOCH" "+%b %e %H:%M")
    # Immutable flag
    ATTR=$(lsattr -d "$f" 2>/dev/null | awk "{print \$1}")
    # Output
    echo "$DATE | $ATTR | $f"
done
' bash {} +
