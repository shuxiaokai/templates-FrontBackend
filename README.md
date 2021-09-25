# Vue FastAPI with Docker

## Dir

```bash
services
│
├── backend
│   ├── Dockerfile
│   ├── Pipfile
│   ├── Pipfile.lock
│   └── src
│       └── main.py
│
└── frontend
    ├── Dockerfile
    ├── README.md
    ├── babel.config.js
    ├── node_modules
    ├── package-lock.json
    ├── package.json
    ├── public
    └── src
        ├── App.vue
        ├── assets
        ├── components
        │   └ HelloWorld.vue
        └── main.js
```

## How to Setup

### Backend

```bash
❯ pwd
~/services/backend

❯ pipenv sync && pipenv install
```

### Frontend

```bash
❯ pwd
~/services/frontend

❯ pwd
npm install
```

## Docker

```bash
❯ ls
docker-compose.yml Makefile README.md services/

❯ make build

or

❯ docker-compose up -d --bulid
```

## Test

```bash
❯ ls
docker-compose.yml Makefile README.md services/

# this command runs ping to Vue and FastAPI
❯ make test

>>> to backend
curl 127.0.0.1:5000
"Hello, World!"


>>> to frontend
curl 127.0.0.1:8080
<!DOCTYPE html>
<html lang="">
  <head>
    ...
```
