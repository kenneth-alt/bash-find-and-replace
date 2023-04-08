FROM alpine:latest
RUN apk update && apk add --no-cache bash
WORKDIR /app
COPY find-and-replace.sh .
ENTRYPOINT ["./find-and-replace.sh"]