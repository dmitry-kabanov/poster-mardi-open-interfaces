#!/bin/bash

#!/bin/bash

# Get the current date
current_date=$(date +"%Y-%m-%d")
tag_name="v$current_date"

# Check if the tag already exists
if git rev-parse "$tag_name" >/dev/null 2>&1; then
  echo "ERROR: Tag '$tag_name' already exists." >&2
  echo -n "You can delete it first: " >&2
  echo "git tag -d $tag_name && git push origin --delete $tag_name" 2>&1
  exit 1
else
  # Create the annotated tag if it doesn't exist
  git tag -a "$tag_name" -m "Tag $tag_name"
  echo "Created annotated tag '$tag_name'"
fi
