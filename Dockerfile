# ==========================================
# Stage 1: Build & Dependency Installation
# ==========================================
FROM python:3.12-slim AS builder

# Prevent Python from writing .pyc files and buffer stdout/stderr
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

# Optional: Install OS build tools if your packages require compiling C extensions
# RUN apt-get update && apt-get install -y --no-install-recommends build-essential && rm -rf /var/lib/apt/lists/*

# Create an isolated virtual environment
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Install dependencies into the virtual environment
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt


# ==========================================
# Stage 2: Final Minimal Runtime Image
# ==========================================
FROM python:3.12-slim AS runner

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PATH="/opt/venv/bin:$PATH"

WORKDIR /app

# Create a secure non-privileged system user and group
RUN groupadd -g 10001 appgroup && \
    useradd -u 10001 -g appgroup -s /sbin/nologin -d /app appuser

# Copy virtual environment from the builder stage
COPY --from=builder --chown=appuser:appgroup /opt/venv /opt/venv

# Copy application source code
COPY --chown=appuser:appgroup . .

# Switch to the non-root user
USER 10001:10001

EXPOSE 5000

# Production: Use a WSGI server such as Gunicorn (ensure gunicorn is in requirements.txt)
# "app:app" means file 'app.py', Flask instance named 'app'
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--workers", "4", "--threads", "2", "--access-logfile", "-", "--error-logfile", "-", "app:app"]

# Alternative: If app.py directly invokes an embedded production server, use:
# CMD ["python", "app.py"]
