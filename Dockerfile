FROM ubuntu:22.04

# Dùng mirror Singapore thay vì archive.ubuntu.com
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|http://mirror.sg.gs/ubuntu/|g' /etc/apt/sources.list

# Cài ??t các gói c?n thi?t
RUN apt update && apt install -y tmate openssh-client curl

# Copy script vào container
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Ch?y script
CMD ["/start.sh"]