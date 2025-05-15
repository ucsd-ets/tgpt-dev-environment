# TEST server
from fastapi import FastAPI
import logging
logging.info('HELLO')
app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, World!"}

