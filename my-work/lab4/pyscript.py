#!/Library/Frameworks/Python.framework/Versions/3.12/bin/python3

import requests
import boto3

bucket_name = "ds2022-huk5pd" 
file_url = "https://www.si.com/.image/t_share/MTY4MjU5ODI1MzU0NDgzNjEz/jeff-green-hugjpg.jpg" 
local_file_name = "jeffgreen.png" 
expires_in = 604800 

response = requests.get(file_url)
with open(local_file_name, 'wb') as file:
    file.write(response.content)
print(f"File downloaded: {local_file_name}")

s3 = boto3.client('s3', region_name='us-east-1')

s3.upload_file(local_file_name, bucket_name, local_file_name)
print(f"File uploaded to S3: s3://{bucket_name}/{local_file_name}")

presigned_url = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': local_file_name},
    ExpiresIn=expires_in
)
print(f"Presigned URL (valid for 7 days): {presigned_url}")
