# Start with a Python base image
FROM python:3.9-alpine

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install the dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the rest of the application files into the container
COPY . /app/

# Expose the app's port (optional, but useful)
EXPOSE 5000

# Run the Flask application
ENTRYPOINT ["python"]
CMD ["app.py"]
