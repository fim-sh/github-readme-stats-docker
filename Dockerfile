FROM node:lts-alpine

# Set working directory
WORKDIR /app

# Install required packages
RUN apk add --no-cache git

# Clone the github-readme-stats repository
RUN git clone https://github.com/anuraghazra/github-readme-stats.git .

# Install dependencies
RUN npm install express
RUN npm install

# Expose port
EXPOSE 9000

# Start the application
CMD ["node", "express.js"]