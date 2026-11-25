
# Select Python base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy dependencies
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy Flask application
COPY app.py .

# Document application port
EXPOSE 5000

# Start Flask server
CMD ["python", "app.py"]
