# Use official Ubuntu image
FROM ubuntu:latest

# Install dependencies
RUN apt update && apt install -y python3 python3-pip

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install Python dependencies
RUN pip3 install --no-cache-dir --break-system-packages -r requirements.txt


# Expose port
EXPOSE 8000

# Run the app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]