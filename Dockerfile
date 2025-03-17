# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /myapp

# Copy the current directory contents into the container at /app
COPY . /myapp

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that Flask will run on
EXPOSE 5000

# Set the environment variable to tell Flask to run the app from 'app.py'
ENV FLASK_APP=myapp.py

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]


