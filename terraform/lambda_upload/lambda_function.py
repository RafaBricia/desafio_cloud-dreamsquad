import boto3
import os
from datetime import datetime

def lambda_handler(event, context):
    s3 = boto3.client("s3")
    now = datetime.utcnow().strftime("%Y-%m-%d_%H-%M-%S.txt")
    bucket = os.environ.get("FILES_BUCKET")  # Nome do bucket vindo do Terraform
    body = f"Arquivo gerado automaticamente em {now} (UTC)\n"
    s3.put_object(Bucket=bucket, Key=now, Body=body)
    return {"status": "ok", "key": now}
