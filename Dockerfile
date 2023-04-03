# Docker files must begin with a FROM instr
# build this image from specified image
FROM  node:19-alpine

#Copies files or directories from <src> and adds them to the file system of the container
# at the path <dest>
# While RUN is executed in the container. COPY is executed on the host
COPY package*.json /usr/app/
COPY src /usr/app/ 
#the second slash in IMP to tell docker to create a folder
# Sets the workdir for all following commands (like cd..)
WORKDIR /usr/app

#Will exec any command in a shell inside the container env.
RUN npm install

#The inst that is to be exec when a Docker container starts
#There can only be one "CMD" instruction in a Dockerfile

CMD ["node","server.js"]