* **From Docker hub**

`
docker run -tid -v /Users/czhang1/docker_data/aerospike_conf:/opt/aerospike/etc -v /Users/czhang1/docker_data/aerospike_data:/opt/aerospike/data --name aerospike -p 3000:3000 -p 3001:3001 -p 3002:3002 -p 3003:3003 aerospike/aerospike-server /usr/bin/asd --foreground --config-file /opt/aerospike/etc/aerospike.conf
`


* From Docker File

* **Run Aerospike**

`
1. docker build -t aerospike_amc .
2. docker run -d --name aerospike_amc -v /Users/czhang1/docker_data/aerospike_data:/opt/aerospike/data  -p 3000:3000 -p 3001:3001 -p 3002:3002 -p 3003:3003 -p 13000:13000 aerospike_amc
`


* **Enables registration of User Defined Functions** :

`
1. docker run -d --name aerospike-amc --volume <path-to-local-udf-folder>:/aerospike-udf -p 3000:3000 -p 3001:3001 -p 3002:3002 -p 3003:3003 -p 13000:13000 aerospike  
2. docker exec aerospike /register.sh
`
