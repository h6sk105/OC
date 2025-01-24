#!/bin/bash
counter=0
for file in $(ls /etc); do
	if [ -f "/etc/$file" ] && [ ! -L "/etc/$file" ]; then
		counter=$((counter + 1))
	fi
done
echo "Кількість файлів в дерикторії /etc $counter"
