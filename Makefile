build:
	docker build -t opstree/vm:1.0 .

create-network:
	docker network create sandy || true

run-webserver1:
	docker rm -f webserver1 || true
	docker run -itd --name webserver1 -p 8090:80 --rm --net sandy opstree/vm:1.0
	docker exec -it webserver1 bash -c "/etc/init.d/ssh start"

run-webserver2:
	docker rm -f webserver2 || true
	docker run -itd --name webserver2 -p 8091:80 --rm --net sandy opstree/vm:1.0
	docker exec -it webserver2 bash -c "/etc/init.d/ssh start"

run-controlserver:
	docker rm -f controlserver || true
	docker run -itd --name controlserver --rm --net sandy -v ${PWD}:/src opstree/vm:1.0

run-setup:
	make create-network
	make run-webserver1
	make run-webserver2
	make run-controlserver