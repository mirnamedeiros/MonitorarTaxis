#!/bin/bash

#Subscrever taxis

#curl -X POST http://127.0.0.1:1026/v1/subscribeContext -H 'Content-Type: application/json' -d @subscrever/subscrever-taxi1.json

#curl -X POST http://127.0.0.1:1026/v1/subscribeContext -H 'Content-Type: application/json' -d @subscrever/subscrever-taxi2.json

curl -X POST http://127.0.0.1:1026/v1/subscribeContext -H 'Content-Type: application/json' -d @subscrever/subscrever-taxi3.json
