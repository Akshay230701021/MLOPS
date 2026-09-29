from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Hello from Jenkins + FastAPI"}

@app.get("/health")
def health():
    return {"status": "OK"}