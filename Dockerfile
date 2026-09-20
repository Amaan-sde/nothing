FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --omit=dev

# Copy application source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start application
CMD ["npm", "start"]
