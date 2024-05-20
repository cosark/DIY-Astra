# Use an official Python runtime as a parent image
FROM python:3.12

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5001 available to the world outside this container
EXPOSE 5001

# Define environment variable
#ENV GOOGLE_API_KEY=your-google-api-key
#ENV ELEVENLABS_API_KEY=your-elevenlabs-api-key

# Run app.py when the container launches
CMD ["python", "app.py"]
