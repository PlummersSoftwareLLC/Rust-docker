FROM alpine:3.13

RUN apk add curl build-base

WORKDIR /app

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs --output init-rust.sh \
    && chmod a+x init-rust.sh \
    && ./init-rust.sh -y

ENV PATH "/root/.cargo/bin:$PATH"


