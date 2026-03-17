FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy only package files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining files
COPY . .

# Expose port (optional but recommended)
EXPOSE 8000

# Start app
CMD ["node", "index.js"]