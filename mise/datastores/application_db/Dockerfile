# Use the official PostgreSQL image as the base image
FROM postgres:latest

# Set the environment variables for the PostgreSQL container
# These are used to set up the default username, password, and database
ENV POSTGRES_USER=devuser
ENV POSTGRES_PASSWORD=devpassword
ENV POSTGRES_DB=devdb

# Expose the default PostgreSQL port
EXPOSE 5432

# The official PostgreSQL image uses an entrypoint script that creates the user,
# password, and database provided above and runs the server.
