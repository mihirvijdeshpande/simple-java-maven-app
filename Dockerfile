# Install the base requirements for the app.
# This stage is to support development.
FROM ubuntu
RUN apt-get update
RUN apt-get install -y python-pip python-dev build-essential 
RUN pip install --upgrade pip
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
