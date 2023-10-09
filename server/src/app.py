"""
FASTAPI APP
https://github.com/tiangolo/fastapi

This is the main file of the server. It is responsible for creating the FastAPI app and registering the routes.
It is used for communication with the client/frontend and database.
"""

from fastapi import FastAPI

# logging and debug config
app = FastAPI()


@app.get('/api/hello-world/')
async def hello_word():
    return 'Hello World!'
