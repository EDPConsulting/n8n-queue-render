FROM n8nio/n8n:latest

# Switch to root user so we can install packages globally
USER root

# Install html-to-docx globally (npm is available in the base image).
RUN npm install --location=global docx
RUN npm install --location=global aws4

# Switch back to n8n user
USER node
