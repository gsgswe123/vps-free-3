FROM ubuntu:22.04

# D�ng mirror Singapore thay v� archive.ubuntu.com
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|http://mirror.sg.gs/ubuntu/|g' /etc/apt/sources.list

# C�i ??t c�c g�i c?n thi?t
RUN apt update && apt install -y tmate openssh-client curl

# Copy script v�o container
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Ch?y script
CMD ["/start.sh"]