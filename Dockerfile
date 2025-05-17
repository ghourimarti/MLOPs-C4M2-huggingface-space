# Base image with Python
FROM python:3.10-slim

# Avoid interactive prompts during package install
ENV DEBIAN_FRONTEND=noninteractive

# Create working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .

# Expose Gradio’s default port
EXPOSE 7860

# Run the app
CMD ["python", "app.py"]
