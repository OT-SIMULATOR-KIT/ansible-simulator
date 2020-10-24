build:
	docker build -t opstree/vm:1.0 .

create-network:
	docker network create sandy || true

run-deepak-gupta:
	docker rm -f deepakg || true
	docker run -itd --name deepakg --rm --net sandy opstree/vm:1.0
	docker exec -it deepakg bash -c "/etc/init.d/ssh start"

run-sumit:
	docker rm -f sumit || true
	docker run -itd --name sumit --rm --net sandy opstree/vm:1.0
	docker exec -it sumit bash -c "/etc/init.d/ssh start"

run-vinod:
	docker rm -f vinod || true
	docker run -itd --name vinod --rm --net sandy opstree/vm:1.0
	docker exec -it vinod bash -c "/etc/init.d/ssh start"

run-rahul:
	docker rm -f rahul || true
	docker run -itd --name rahul --rm --net sandy opstree/vm:1.0
	docker exec -it rahul bash -c "/etc/init.d/ssh start"

run-mehul:
	docker rm -f mehul || true
	docker run -itd --name mehul --rm --net sandy opstree/vm:1.0
	docker exec -it mehul bash -c "/etc/init.d/ssh start"

run-navneet:
	docker rm -f navneet || true
	docker run -itd --name navneet --rm --net sandy opstree/vm:1.0
	docker exec -it navneet bash -c "/etc/init.d/ssh start"

run-controlserver:
	docker rm -f controlserver || true
	docker run -itd --name controlserver --rm --net sandy -v ${PWD}:/src opstree/vm:1.0

run-setup:
	make create-network
	make run-deepak-gupta
	make run-sumit
	make run-vinod
	make run-rahul
	make run-mehul
	make run-navneet
	make run-controlserver