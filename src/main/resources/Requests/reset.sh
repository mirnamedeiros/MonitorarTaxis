#!/bin/bash

#Resetar localização e status dos taxis

curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @reset/reset-taxi1.json

curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @reset/reset-taxi2.json

curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @reset/reset-taxi3.json
