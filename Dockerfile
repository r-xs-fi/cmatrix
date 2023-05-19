FROM alpine:latest

CMD ["cmatrix"]

RUN apk add cmatrix

# run as unprivileged user
USER 1000:1000
