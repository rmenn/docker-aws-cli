FROM alpine:3.5


RUN apk --no-cache update && \
    apk --no-cache add python py-pip ca-certificates && \
    pip --no-cache-dir install awscli && \
    apk --purge -v del py-pip && \
    rm -rf /var/cache/apk/* && \
    mkdir /assets && \
    mkdir /kubernetes
