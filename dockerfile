# Use official Python image
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirement file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your application code
COPY . .

# Expose port (Flask default is 5000)
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
