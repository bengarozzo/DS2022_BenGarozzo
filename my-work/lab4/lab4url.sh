#!/bin/bash

BUCKET_NAME="ds2022-huk5pd"
FILE_PATH="/Users/ben/DS2022.2/my-work/lab4/tavon_a"
S3_PATH="s3://${BUCKET_NAME}/$(basename ${FILE_PATH})"

aws s3 cp "${FILE_PATH}" "${S3_PATH}"
echo "File uploaded to S3: ${S3_PATH}"

EXPIRATION_TIME=604800
PRESIGNED_URL=$(aws s3 presign --expires-in "${EXPIRATION_TIME}" "${S3_PATH}")
echo "Presigned URL (valid for 7 days): ${PRESIGNED_URL}"
