# docker-portable-webapp
# 🚀 Docker Portable Web App (Multi-Container | Multi-Stage)

A production-style Dockerized web application demonstrating container portability, multi-container architecture, and optimized builds using multi-stage Dockerfile.

---

## 📌 Project Overview

This project showcases how Docker ensures that applications run consistently across different environments.

It includes:

* Flask-based web application
* Redis for caching (visit counter)
* Multi-stage Docker build for optimization
* Docker Compose for orchestration

---

## 🔥 Key Features

* ✅ Environment-independent execution (runs same on any system)
* ✅ Multi-container architecture (Web + Redis)
* ✅ Visit counter using Redis
* ✅ System information display (Hostname, OS)
* ✅ Lightweight image using multi-stage Docker build

---

## 🖼️ Application Output

* Displays:

  * Visit count (increments on refresh)
  * Container hostname
  * OS (Linux inside container)



---<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/b17c0143-3315-42a5-83f8-7e2b1863a39c" />


## 🐳 Docker Hub Image

Image available at:

vishal80/project1portablewebapp-web

---

## ⚙️ How to Run

### Option 1: Using Docker Compose

```bash
docker-compose up --build
```

### Option 2: Using Docker Hub Image

```bash
docker pull vishal80/project1portablewebapp-web:tagname
docker run -p 5000:5000 vishal80/project1portablewebapp-web:tagname
```

---

## 🛠️ Tech Stack

* Python (Flask)
* Redis
* Docker
* Docker Compose

---

## 🧠 Docker Concepts Used

* Multi-stage Dockerfile
* Container networking
* Service dependency (depends_on)
* Port mapping
* Image portability

---

## 💼 Real-World Use Case

This project demonstrates how teams ensure:

* Same app runs on developer machine, testing, and production
* No dependency conflicts
* Easy deployment using container images

---

## 📈 Resume Highlight

**Built a portable multi-container Docker application using Flask and Redis, leveraging multi-stage builds to optimize image size and ensure consistent deployment across environments.**


* Deploy on AWS (EC2 / ECS)

