FROM ubuntu:latest

COPY ./backup ./backup

# Install cron
RUN apt-get update && apt-get install -y cron

# Install postgres
RUN apt install postgresql postgresql-contrib -y

# Copy hello-cron file to the cron.d directory
COPY pg-backup-cron /etc/cron.d/pg-backup-cron

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/pg-backup-cron

# Apply cron job
RUN crontab /etc/cron.d/pg-backup-cron
 
# Create the log file to be able to run tail
# RUN touch /var/log/cron.log
 
# Run the command on container startup
CMD cron