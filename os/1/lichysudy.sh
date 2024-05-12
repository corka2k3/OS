#!/bin/bash
#roztřizoval přihlášené uživatele pomocí pts na lichý a sudý, kde lichý byla l[] a s[] pro sudý.

oddUsers=()
evenUsers=()

while IFS= read -r line; do
    username=$(echo "$line" | cut -d " " -f 1)
    pts=$(echo "$line" | cut -d " " -f 2)

    if ((pts % 2 == 0)); then
        evenUsers+=("$username")
    else
        oddUsers+=("$username")
    fi
done < <(who)

echo "Lichý PTS:"
for user in "${oddUsers[@]}"; do
    echo "l[$user]"
done

echo "Sudý PTS:"
for user in "${evenUsers[@]}"; do
    echo "s[$user]"
done
