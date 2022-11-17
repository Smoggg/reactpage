FROM node:16-bullseye-slim
# Set the baseImage to use for subsequent instructions. FROM must be the first instruction in a Dockerfile.
# FROM baseImage
# FROM baseImage:tag

WORKDIR /app
# Set the working directory for any subsequent ADD, COPY, CMD, ENTRYPOINT, or RUN instructions that follow it in the Dockerfile.
# WORKDIR /path/to/workdir
# WORKDIR relative/path

COPY . .
# Copy files or folders from source to the dest path in the image's filesystem.
# COPY hello.txt /absolute/path
# COPY hello.txt relative/to/workdir

RUN npm install
# Execute any commands on top of the current image as a new layer and commit the results.
# RUN apt-get update && apt-get install -y curl

CMD [ "npm", "run", "start"]
# Provide defaults for an executing container. If an executable is not specified, then ENTRYPOINT must be specified as well. 
# There can only be one CMD instruction in a Dockerfile.
# CMD [ "/bin/ls", "-l" ]

EXPOSE 3000
# Define the network ports that this container will listen on at runtime.


#docker build . -t reactpage
#docker run reactpage
#docker ps
#docker stop [id]
#docker tag [id] xqsmog/testimages:initial
#docker push xqsmog/testimages:tagname
