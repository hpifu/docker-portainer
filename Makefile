repository=portainer

.PHONY: deploy remove logs

deploy:
	docker stack deploy -c stack.yml ${repository}

remove:
	docker stack rm ${repository}

logs:
	docker logs $$(docker ps --filter name=$(repository) -q)
