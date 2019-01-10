.PHONY: build
build:
	docker build -t cgi-example apache

.PHONY: run
run:
	docker run --detach --rm --cidfile .cgi-example-cid --init -p 8000:80 cgi-example
	@echo
	@echo 'Open: http://localhost:8000/cgi-bin/env.cgi'

.PHONY: stop
stop:
	docker stop "$(shell cat .cgi-example-cid)"
	rm .cgi-example-cid

.PHONY: sh
sh:
	docker exec -it "$(shell cat .cgi-example-cid)" bash
