import json
import boto3

def lambda_handler(event, context):

    secret_name = "rds-secret"

    client = boto3.client("secretsmanager")

    response = client.get_secret_value(
        SecretId=secret_name
    )

    return {
        "statusCode": 200,
        "body": json.dumps("Connected Successfully")
    }