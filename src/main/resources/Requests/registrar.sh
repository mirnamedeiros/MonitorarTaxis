#!/bin/bash

curl -X POST http://localhost:1026/v1/contextEntities -H 'Content-Type: application/json' -d @registrar-taxi1.json

curl -X POST http://localhost:1026/v1/contextEntities -H 'Content-Type: application/json' -d @registrar-taxi2.json

curl -X POST http://localhost:1026/v1/contextEntities -H 'Content-Type: application/json' -d @registrar-taxi3.json
