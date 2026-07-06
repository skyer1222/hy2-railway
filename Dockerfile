FROM tobyxdd/hysteria:latest
COPY config.yaml /etc/hysteria/config.yaml
EXPOSE 8080/udp
ENTRYPOINT ["hysteria", "server", "-c", "/etc/hysteria/config.yaml"]
