#!/bin/bash

# Check for necessary arguments
if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <release.json>"
	exit 1
fi

RELEASE_JSON=$1

# Parse values from release.json using jq
VERSION=$(jq -r '.version' "$RELEASE_JSON")
TAG="v$VERSION"
RELEASE_NAME=$(jq -r '.releaseName' "$RELEASE_JSON")
NOTES=$(jq -r '.notes' "$RELEASE_JSON")
RELEASE_DIR="release"

# Create release directory
mkdir -p "$RELEASE_DIR"

# Create a zip of the project (change this command to suit your project structure)
zip -r "$RELEASE_DIR/$RELEASE_NAME-$VERSION.zip" . -x "*.git*" "*.DS_Store"

# Create a release on GitHub
gh release create "$TAG" "$RELEASE_DIR/$RELEASE_NAME-$VERSION.zip" --title "$RELEASE_NAME $VERSION" --notes "$NOTES"

# Clean up
rm -rf "$RELEASE_DIR"

echo "Release $TAG created successfully!"
