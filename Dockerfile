FROM amazon/aws-cli:latest

COPY entrypoint.sh /root/entrypoint.sh

RUN ["chmod", "+x", "/root/entrypoint.sh"]

ENTRYPOINT ["/root/entrypoint.sh"]
