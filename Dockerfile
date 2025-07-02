FROM ubuntu:22.04

# Dùng mirror nhanh hơn thay vì archive.ubuntu.com
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|http://mirror.sg.gs/ubuntu/|g' /etc/apt/sources.list

# Cài đặt tmate và công cụ cần thiết
RUN apt update && apt install -y tmate openssh-client curl

# Copy script vào container
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Chạy script khi container khởi động
CMD ["/start.sh"]