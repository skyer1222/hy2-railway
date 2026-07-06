FROM tobyxdd/hysteria:latest
COPY config.yaml /etc/hysteria/config.yaml
RUN openssl req -x509 -newkey rsa:2048 -keyout /etc/hysteria/server.key -out /etc/hysteria/server.crt -days 3650 -nodes -subj "/CN=bing.com"
EXPOSE 8080/udp
ENTRYPOINT ["hysteria", "server", "-c", "/etc/hysteria/config.yaml"]
