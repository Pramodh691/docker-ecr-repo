# Use Node.js base image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose app port
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
