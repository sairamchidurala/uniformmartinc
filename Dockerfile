# FROM python:3.9-slim

# ENV PYTHONUNBUFFERED=1
# WORKDIR /app

# # Install dependencies
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy everything
# COPY . .

# # Ensure entrypoint is executable
# RUN chmod +x ./entrypoint.sh

# # Collect static at runtime
# ENTRYPOINT ["./entrypoint.sh"]

# EXPOSE 8000

# CMD ["gunicorn", "fileuploader.wsgi:application", "--bind", "0.0.0.0:8000"]

# Use official Python image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

# Create and set working directory
WORKDIR /app

# Install system dependencies (required for psycopg2 and Pillow)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    gcc \
    python3-dev \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Copy project files
COPY . .

# Make entrypoint executable
RUN chmod +x /app/entrypoint.sh

# Expose port
EXPOSE 8000

# Run entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]