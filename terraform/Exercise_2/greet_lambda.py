import os

def lambda_handler(event, context):
    print("Hello {} from Lambda!".format(os.environ['greeting']))
    return "Hello {} from Lambda!".format(os.environ['greeting'])
