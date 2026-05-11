# FROM python:3.10

# WORKDIR /app

# COPY requirements.txt .

# RUN pip install -r requirements.txt

# COPY . .

# CMD ["python", "app.py"]



# Multi-stage Dockerfile
FROM python:3.10 AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --user -r requirements.txt

# Stage 2: Final lightweight image
FROM python:3.10-slim

WORKDIR /app

# Copy installed packages from builder
COPY --from=builder /root/.local /root/.local

# Ensure binaries are in PATH
ENV PATH=/root/.local/bin:$PATH

# Copy app code
COPY . .

CMD ["python", "app.py"]