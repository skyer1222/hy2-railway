dockerfile
FROM xtls/xray:latest
COPY config.json /user/local/etc/xray/config.json
RUN chmod +x /user/local/bin/xray
ENTRYPOINT ["/user/local/bin/xray", "-config", "/user/local/etc/xray/config.json"]
