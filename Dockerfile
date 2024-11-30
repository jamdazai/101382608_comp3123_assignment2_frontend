# Use Node.js image to build the frontend
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first to install dependencies
COPY package.json package-lock.json ./

# Install the frontend dependencies
RUN npm install

# Copy the frontend code into the container
COPY . .

# Expose the frontend port
EXPOSE 3000

# Start the frontend application
CMD ["npm", "start"]
