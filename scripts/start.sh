#!/bin/sh

mkdir -p /data/burst_db

if ! test -d /data/conf; then
	cp -a /app/conf /data/conf
fi

java -cp burst.jar:lib/*:/data/conf nxt.Nxt
