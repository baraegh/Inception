SRCS = ./srcs/docker-compose.yml

all : build up

up : ${SRCS} build
	@mkdir -p srcs/data/db srcs/data/wp
	@docker-compose -f srcs/docker-compose.yml up

build : ${SRCS}
	@mkdir -p srcs/data/db srcs/data/wp
	@docker-compose -f srcs/docker-compose.yml build

down :
	@docker-compose -f srcs/docker-compose.yml down

clean :
	@docker system prune -af