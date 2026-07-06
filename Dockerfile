dockerfile
FROM xtls/xray:latest
COPY config.json /user/local/etc/xray/config.json
ENTRYPOINT ["/user/local/bin/xray", "-config", "/user/local/etc/xray/config.json"]
