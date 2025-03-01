FROM n8nio/n8n:node18

# Switch to root user so we can install packages globally
USER root

# Install html-to-docx globally (npm is available in the base image).
RUN npm install --location=global docx
RUN npm install --location=global @aws-sdk/client-s3 @aws-sdk/s3-request-presigner

# Switch back to n8n user
USER node
