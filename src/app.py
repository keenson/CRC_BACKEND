import json
import boto3
dynamodb = boto3.resource('dynamodb')
table = dynamodb.Table('counter_table')


def lambda_handler(event, context):
    response = table.get_item(Key={
        'id': '0'
    })
    record_count = response['Item']['count']
    record_count = str(int(record_count) + 1)
    print(record_count)
    response = table.put_item(Item={
        'id': '0',
        'count': record_count
    })

    return {

        'statusCode': 200,
        'headers': {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Methods': 'OPTIONS,POST,GET'
        },
        'body': record_count}
