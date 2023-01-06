SRCS = srcs/docker-compose.yml

all : build up

up : ${SRCS}
	@docker-compose -f ${SRCS} up

build : ${SRCS}
	@mkdir -p srcs/data srcs/data/wp srcs/data/db srcs/data/pr
	@docker-compose -f ${SRCS} build

down :
	@docker-compose -f ${SRCS} down

clean :
	@docker system prune -af

fclean: clean
	@docker image prune -af

re: fclean build up

.PHONY: all up build down clean fclean