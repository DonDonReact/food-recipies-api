# Start from node base image
FROM node:12

# All subsequent commands will now be run from inside this folder
RUN mkdir -p /api
WORKDIR /api
ADD package.json .

# Install dependencies (Make sure to add node_modules to your .dockerignore 
# in case you accidentally install locally.)
RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Copy all the code in the local directory into the container’s working directory
COPY ./ ./

EXPOSE 3001

CMD [ "npm", "start" ]
