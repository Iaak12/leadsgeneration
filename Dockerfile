FROM n8nio/n8n:latest

USER root

# Ensure the n8n directory is writable for the node user
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node

# Render handles the port, but we can declare it here for clarity
EXPOSE 5678

# Use start command to ensure it picks up environment variables correctly
CMD ["start"]
