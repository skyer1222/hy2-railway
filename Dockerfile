FROM xtls/xray:latest
COPY config.json /user/local/etc/xray/config.json
EXPOSE 80
ENTRYPOINT ["xray", "-config", "/user/local/etc/xray/config.json"]
