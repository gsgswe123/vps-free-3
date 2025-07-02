FROM ubuntu:22.04

# Cài tmate và công c? c?n thi?t
RUN apt update && apt install -y tmate openssh-client curl

# Copy script vào container
COPY start.sh /start.sh

# C?p quy?n th?c thi
RUN chmod 755 /start.sh

# Ch?y script
CMD ["/start.sh"]