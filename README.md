# Nginx Reverse Proxy Template

This repository contains a basic _nginx reverse proxy_ configuration. For this example we have 4 services:

1. The backend FastAPI server serving as a Rest API
2. The frontend Vue.js App
3. The PostgreSQL database
4. The reverse proxy server

The responsibility of the reverse proxy is to distribute requests to it to the right containers depending on the routes used.

> The reverse proxy is not a load balancer in this case, but rather a way to group all services which need to be exposed to the client under 1 domain

All this is running with docker and docker-compose. The environment variable configuration can be found in the `.env.example` file.
As this repo contains a lot of different configuration files the most important ones for the reverse proxy configuration are listed here:

- `docker-compose.yml` - The docker-compose file which defines all services
- `dockerfile`s for each sub-service - The dockerfiles which define how each service is built
- `.env.example` - The environment variables used in the docker-compose file
- `reverse-proxy/` - This folder contains all configuration files for the reverse proxy

Other:

- `frontend` - Basic Vue project template. Just there to see how the folder structure and the project setup would look like
- `server` - Basic FastAPI project template. Just there to see how the folder structure and the project setup would look like
- `.vscode` - Extra vscode debugging configuration files for attaching to the backend and frontend containers + testing config.
