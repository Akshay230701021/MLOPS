pipeline {
    agent any

    stages {

        stage('Create FastAPI App') {
            steps {
                writeFile file: 'main.py', text: '''
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Hello from Jenkins + FastAPI"}

@app.get("/health")
def health():
    return {"status": "OK"}
'''
            }
        }

        stage('Install') {
            steps {
                bat '"C:\\Users\\aksha\\AppData\\Local\\Programs\\Python\\Python314\\python.exe" -m pip install fastapi uvicorn'
            }
        }

        stage('Run FastAPI') {
            steps {
                bat 'start /B "FastAPI" "C:\\Users\\aksha\\AppData\\Local\\Programs\\Python\\Python314\\python.exe" -m uvicorn main:app --host 0.0.0.0 --port 8000'
            }
        }

        stage('Verify') {
            steps {
                bat 'curl http://localhost:8000/health'
            }
        }
    }
}