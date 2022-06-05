help:
	@echo ""
	@echo "help		shows this message"
	@echo "create-networks	create docker networks"
	@echo ""
create-networks:
	docker network create --driver bridge developer-net
connect-develope:
	docker network connect developer-net Google-Chrome
