## Docker Go

### Usage
- Step 1: Create env file and configure environment variables
```bash
cp .env.example .env
```

- Step 2: Build the docker container
```bash
docker-compose up --build
```

- Step 3: Update the entry point in `.air.toml`
```
cmd = "go build -o ./tmp/main ./cmd/main.go" // change this path ./cmd/main.go
```