# Install the base requirements for the app.
# This stage is to support development.
FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3-pip python3-dev build-essential 
RUN pip3 install --upgrade pip
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
