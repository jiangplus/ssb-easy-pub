build:
	docker build . -t ssb
setup:
	mkdir -p data
	sed "s/your.public.site/$(site)/" config.example > data/config
start:
	docker run -d --name ssb \
   -v data:/home/node/.ssb/ \
   -p 8008:8008 \
   --restart unless-stopped \
   ssb
whoami:
	docker exec -it ssb sbot whoami
create-invite:
	docker exec -it ssb sbot invite.create $(count)