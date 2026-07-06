FROM tobyxdd/hysteria:latest
COPY config.yaml /etc/hysteria/config.yaml
EXPOSE 8080/udp
ENTRYPOINT ["/usr/bin/hysteria", "server", "-c", "/etc/hysteria/config.yaml"]
