FROM docker.io/oven/bun:latest
WORKDIR /app
COPY . .
RUN bun install
EXPOSE 8001
CMD ["bun", "run", "dev", "--host", "0.0.0.0"]
