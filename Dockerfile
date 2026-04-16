FROM docker.io/oven/bun:latest
WORKDIR /app
COPY . .
RUN bun install
EXPOSE 8000
CMD ["bun", "run", "build"]
