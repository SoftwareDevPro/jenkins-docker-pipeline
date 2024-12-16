FROM node:14

# Set the working directory
WORKDIR /app

# Copy application files
COPY package*.json ./
RUN npm install
COPY . .

# Expose the application port
EXPOSE 5100

# Define the startup command
CMD ["npm", "start"]