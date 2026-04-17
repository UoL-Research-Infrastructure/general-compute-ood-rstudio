#!/usr/bin/env bash

echo "$(date): Waiting for port '${port}' to open..."

if wait_until_port_used "0.0.0.0:${port}" 180; then
	echo "$(date): Discovered process listening on port '${port}'!"
else
	echo "$(date): Timed out waiting port ${port} to become open!"
	clean_up 1
fi

sleep 2
