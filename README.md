# Docker commands

Build and Run: ```docker compose up --build```

If container is already build: ```docker compose up```

Run sweep: ```docker compose -f docker-compose.sweep.yml up```

# Env variables

Stored in .env

```dosini
COMPOSE_PROJECT_NAME=""
CONTAINER_NAME=""

GPU_ID=<ID of GPU - 0 or 1>
WANDB_API_KEY=""
WANDB_PROJECT=""

PARAMS="<Override configuration parameters>"
PROMPT="<Text prompt used for generation>"
```

# Mounted directories

- ```./VectorFusion-pytorch``` (Make VectorFusion code available in container)
- ```./assets``` (Assets like images/svgs you want to use in the pipeline)
- ```./tmp:``` (Output of pipeline)

Note: You don't have to rebuild the container on code changes! A rebuild is only necessary if you add dependencies to the ```requirements.txt``` or make changes in the ```Dockerfile```.