#!/usr/bin/env bash

set -e

BUCKET="$1"
PROFILE=${2-default}

if [ -z "$BUCKET" ]; then
  echo "missing bucket name"
  exit 1;
fi

echo "nuking $BUCKET from orbit"

aws s3 rm s3://$BUCKET --recursive --profile $PROFILE
aws s3api delete-bucket --bucket $BUCKET --profile $PROFILE
