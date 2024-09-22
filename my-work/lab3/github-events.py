#!/Library/Frameworks/Python.framework/Versions/3.12/bin/python3


import os
import json
import requests

GHUSER = os.getenv('GITHUB_USER')
url = 'https://api.github.com/users/{0}/events'.format(GHUSER)

response = requests.get(url)
events = json.loads(response.text)

for event in events[:5]:
    event_type = event['type']
    repo_name = event['repo']['name']
    print(f"{event_type} :: {repo_name}")

response = requests.get(url)

print(response.text)
