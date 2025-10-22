# Use a small, stable Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files first for caching
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the files
COPY . .

# Expose container on PORT 3000
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
