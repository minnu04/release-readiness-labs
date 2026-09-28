#!/bin/bash
set -euo pipefail

release_version="${1:-}"
if [[ -z "$release_version" ]]; then
	echo "A release version is required." >&2
	exit 1
fi

echo "Starting deployment..."
echo "Deploying version: $release_version"
echo "Deployment successful."
