# Use a more recent version of Node.js
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /nodeapp

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Define environment variable
ENV NAME=nodeapp

# Run the application
CMD ["npm", "start"]
