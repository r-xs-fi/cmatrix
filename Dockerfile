# edge because `riscv64` only available in there
FROM alpine:edge

CMD ["cmatrix"]

RUN apk add cmatrix

# run as unprivileged user
USER 1000:1000
