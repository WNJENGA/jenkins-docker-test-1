# Dockerfile to build the unittest container

# Base image is python
FROM python:latest

# Author: Victor
LABEL maintainer="Willan Moringa School <gitau.njenga@student.moringaschool.com>"

# Install redis driver for python and the redis mock
RUN pip install redis && pip install mockredispy

# Copy the test and source to the Docker image
ADD src/ /src/

# Change the working directory to /src/
WORKDIR /src/

# Make unittest as the default execution
ENTRYPOINT python3 -m unittest