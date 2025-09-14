from littlelemon.wsgi import application
from vercel_wsgi import handle

def handler(event, context):
    return handle(event, context, application)
