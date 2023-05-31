ARG BUILD_FROM
FROM newfuture/ddns

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]