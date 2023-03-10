.PHONY: run-d
run-d:
	@echo "Building and running application detached" && \
	docker-compose down --remove-orphans && \
	docker-compose up --build -d

.PHONY: run
run:
	@echo "Building and running application" && \
	docker-compose down --remove-orphans && \
	docker-compose up --build

.PHONY: attach
attach:
	@echo "Attaching to containers" && \
	docker exec -it tarot-reader_app sh
