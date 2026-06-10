FROM docker.io/oven/bun:latest
WORKDIR /app
COPY . .
CMD ["bun", "install"]
