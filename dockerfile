# Use a small, stable Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the app
COPY . .

# Expose port 3000 to the host
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
