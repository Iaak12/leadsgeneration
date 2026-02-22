FROM n8nio/n8n:latest

USER root

# Ensure the n8n directory is writable
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node

# Expose the default n8n port
EXPOSE 5678

CMD ["n8n"]
