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

FROM python:3.9-slim

ENV PYTHONUNBUFFERED=1
WORKDIR /app

# Install system dependencies needed for psycopg2 and pillow
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    libpq-dev \
    python3-dev \
    libjpeg-dev \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all source code
COPY . .

# Make entrypoint executable
RUN chmod +x ./entrypoint.sh

# Collect static files at runtime
ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 8000

CMD ["gunicorn", "fileuploader.wsgi:application", "--bind", "0.0.0.0:8000"]
