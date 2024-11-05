FROM kindest/node:v1.29.0

RUN apt-get update && apt-get install -y \
    redis-tools \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# デフォルトのフォルダを作成
RUN mkdir -p /data/volumes/redis