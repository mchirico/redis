
docker-build:
	docker build --no-cache -t gcr.io/pigdevonlyx/redis:latest -f Dockerfile .

push:
	docker push gcr.io/pigdevonlyx/redis:latest 


run:
	docker run --rm -it --name redis-server -p 6379:6379  gcr.io/pigdevonlyx/redis:latest --appendonly yes 

rund:
	docker run -d --rm -it --name redis-server -p 6379:6379  gcr.io/pigdevonlyx/redis:latest

stop:
	docker stop redis-server
