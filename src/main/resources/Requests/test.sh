#!/bin/bash

#-----------------movimento taxi 1

sleep 5

curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi1/atualizar-taxi1-1.json
sleep 1
	
curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi1/atualizar-taxi1-2.json
sleep 1

curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi1/atualizar-taxi1-3.json
sleep 1

curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi1/atualizar-taxi1-4.json
sleep 1

curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi1/atualizar-taxi1-5.json
sleep 1

curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi1/atualizar-taxi1-6.json
sleep 1

curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi1/atualizar-taxi1-7.json
sleep 1

curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi1/atualizar-taxi1-8.json
sleep 1

	
#-----------------movimento taxi 3
sleep 7

for i in {0..3}
do
	curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi3/atualizar-taxi3-1.json
	sleep 1
	
	curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi3/atualizar-taxi3-2.json
	sleep 1
	
	curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi3/atualizar-taxi3-3.json
	sleep 1
	
	curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi3/atualizar-taxi3-4.json
	sleep 1
done

#-----------------movimento taxi 2
sleep 13

curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-loc-taxi2/atualizar-taxi2.json
sleep 3

curl -X POST http://127.0.0.1:1026/v1/updateContext -H 'Content-Type: application/json' -d @atualizar/atualizar-status-taxi2/atualizar-status-taxi2.json #muda status para ocupado

