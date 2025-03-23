# FastAPI Docker Project 🚀

This project is a **FastAPI-based** web application containerized using **Docker** and automated using **GitHub Actions**. It provides a simple API that can be deployed easily using **Docker Hub**.

---

## 📌 Features
- 🏗 **FastAPI** framework for building APIs
- 🐳 **Docker** containerization
- 🔄 **GitHub Actions** for CI/CD automation
- 🚀 **Auto Deployment** on Docker Hub

---

## 🛠 Setup & Installation

### 🔹 1. Clone this repository:
```sh
git clone https://github.com/your-username/fastapi-docker.git
cd fastapi-docker
```

### 🔹 2. Install dependencies (if running locally):
```sh
pip install -r requirements.txt
```

### 🔹 3. Run the application (locally):
```sh
uvicorn main:app --host 0.0.0.0 --port 8000
```

Now, open **http://localhost:8000/docs** to see the API documentation.

---

## 🐳 Running with Docker

### 🔹 1. Build the Docker image:
```sh
docker build -t fastapi-docker .
```

### 🔹 2. Run the Docker container:
```sh
docker run -p 8000:8000 fastapi-docker
```

Now, visit **http://localhost:8000/docs** to test the API.

---

## ⚡ Automating with GitHub Actions

### 🔹 CI/CD Workflow
This project uses **GitHub Actions** to build and push the Docker image to Docker Hub automatically when changes are pushed to the **main** branch.

#### Steps:
1. On push to the `main` branch, GitHub Actions triggers the **Docker build workflow**.
2. The image is built and pushed to **Docker Hub**.

### 🔹 Secrets Setup
Before running GitHub Actions, configure **repository secrets** in GitHub:
- `DOCKER_USERNAME` → Your Docker Hub username
- `DOCKER_PASSWORD` → Your Docker Hub password

---

## 📜 API Endpoints
| Method | Endpoint | Description |
|--------|---------|-------------|
| **GET** | `/` | Root endpoint |
| **GET** | `/items/{item_id}` | Get an item by ID |

---
