ARG BUILD_FROM
#FROM $BUILD_FROM
FROM chenhw2/aliyun-ddns-cli

LABEL maintainer="zhouguangjie@outlook.com"
WORKDIR /
# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD "/run.sh"
ENTRYPOINT [ "/run.sh" ]