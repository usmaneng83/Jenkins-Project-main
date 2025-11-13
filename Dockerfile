FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install dependencies (if requirements.txt exists)
RUN pip install --no-cache-dir -r requirements.txt || true

# Expose port 8000 (for Flask/Django or similar)
EXPOSE 8000
