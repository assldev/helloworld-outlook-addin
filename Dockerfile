# Use the official Node.js 14 image as the base image
FROM node:14-alpine

# Expose the port that the app will listen on
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]