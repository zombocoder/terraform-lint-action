# Use a specific version of Terraform for consistency
FROM hashicorp/terraform:latest


# Copy files to the / directory
COPY . .

# Ensure the entrypoint script is executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint to the script
ENTRYPOINT ["sh", "/entrypoint.sh"]