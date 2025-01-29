# 'FROM' is the first instruction, telling which base image to use
# (here, Linux with Python pre-installed)
FROM python:3.8-alpine

# 'COPY' copies files from the host filesystem (your machine) to the image filesystem
# (Here, copy everything from the current directory to /app within the image)
COPY . /app

# The WORKDIR instruction sets the working directory for any RUN, CMD, ENTRYPOINT,
# COPY and ADD instructions that follow it in the Dockerfile.
# If the WORKDIR doesn’t exist, it will be created even if 
# it’s not used in any subsequent Dockerfile instruction.
WORKDIR /app

# 'RUN' runs a command during the build of the image
# for example, to install dependencies or libraries
RUN pip install -r requirements.txt

# 'CMD' is the command which runs when the container is started
CMD python /app/main.py