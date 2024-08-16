#!/bin/bash

# Check for necessary arguments
if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <release.json> <bump_type>"
	echo "bump_type can be: major, minor, patch"
	exit 1
fi

RELEASE_JSON=$1
BUMP_TYPE=$2

# Read the current version
CURRENT_VERSION=$(jq -r '.version' "$RELEASE_JSON")

# Split the version into its components
IFS='.' read -r MAJOR MINOR PATCH <<<"$CURRENT_VERSION"

# Bump the version based on the specified type
case $BUMP_TYPE in
major)
	MAJOR=$((MAJOR + 1))
	MINOR=0
	PATCH=0
	;;
minor)
	MINOR=$((MINOR + 1))
	PATCH=0
	;;
patch)
	PATCH=$((PATCH + 1))
	;;
*)
	echo "Invalid bump_type: $BUMP_TYPE"
	exit 1
	;;
esac

# Create the new version string
NEW_VERSION="$MAJOR.$MINOR.$PATCH"

# Reset the release notes to a generic message
RELEASE_NOTES="Updated to $NEW_VERSION"

# Update the version and release notes in the release.json file
jq --arg new_version "$NEW_VERSION" --arg notes "$RELEASE_NOTES" '.version = $new_version | .notes = $notes' "$RELEASE_JSON" >tmp.$$.json && mv tmp.$$.json "$RELEASE_JSON"

echo "Version bumped to $NEW_VERSION"
echo "Release notes reset to: $RELEASE_NOTES"
