# Install the base requirements for the app.
# This stage is to support development.
FROM ubuntu
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
