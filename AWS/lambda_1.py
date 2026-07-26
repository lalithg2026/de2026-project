import boto3
import csv
import io
import json

s3 = boto3.client("s3")

def lambda_handler(event, context):
    # Read bucket + key from event
    bucket = event.get("bucket")
    key = event.get("key")

    # Read file from S3
    obj = s3.get_object(Bucket=bucket, Key=key)
    body = obj["Body"].read().decode("utf-8")

    # Parse CSV
    reader = csv.DictReader(io.StringIO(body))
    rows = list(reader)

    return {
        "statusCode": 200,
        "body": json.dumps({
            "file": key,
            "row_count": len(rows),
            "data": rows
        })
    }
