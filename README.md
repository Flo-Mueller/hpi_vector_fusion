# Docker commands

Build and Run: ```docker compose up --build```

Run (if container is already build): ```docker compose up```

# Env variables

Stored in .env

```dosini
GPU_ID=<ID of GPU - 0 or 1>

PARAMS="<Override configuration parameters>"
PROMPT="<Text prompt used for generation>"
```