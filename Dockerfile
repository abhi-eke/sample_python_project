# syntax=docker/dockerfile:1

# base python image for custom image
FROM python:3.9.21-alpine3.21

# create working directory and install pip dependencies
WORKDIR /sample_python_project
RUN pip3 install flask

# copy python project files from local to /sample_python_project image working directory
COPY . .

# run the flask server  
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
