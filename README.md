# API Gateway Microservice (Nginx)

## Overview

The API Gateway is an Nginx-based reverse proxy that serves as the
single entry point for all client requests. It routes traffic to
internal microservices such as the Auth Service.

## Tech Stack

-   Nginx
-   Docker
-   Docker Compose
-   GitHub Actions (CI/CD)

## Responsibilities

-   Request Routing
-   Centralized Entry Point
-   Reverse Proxy
-   Future JWT Validation Layer

## Architecture

Client → API Gateway → Internal Microservices

## Folder Structure

    nginx/
     ├── nginx.conf
     └── routes.conf
    Dockerfile
    docker-compose.yml

## Running the System

From the api-gateway directory:

``` bash
docker compose up --build
```

## Health Check

GET /health

## Routing Example

/auth/\* → Auth Service

## CI/CD

GitHub Actions builds the gateway Docker image automatically on push to
main.

## Security Note

Only the API Gateway should be publicly exposed. Backend services remain
internal.
