FROM node:20

# Set working directory
WORKDIR /app

# Copy only package files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining files
COPY . .

# Expose port (optional but recommended)
EXPOSE 3000

# Start app
CMD ["node", "index.js"]