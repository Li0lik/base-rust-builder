FROM  --platform=linux/amd64 alpine:3.18.6
LABEL maintainer="Aliaksei Tsyhankou <alexey.tsyhankou@gmail.com>"
LABEL description="Rust builder"

RUN apk --no-cache  add  \
    curl \
    build-base

RUN curl https://sh.rustup.rs | sh -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"
ENV RUSTUP_HOME=/root/.rustup
ENV CARGO_HOME=/root/.cargo

RUN rustup update \
    && rustup component add rustfmt







