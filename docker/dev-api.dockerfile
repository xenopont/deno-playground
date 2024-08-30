FROM denoland/deno:alpine-1.46.2
#USER deno
RUN apk update
WORKDIR /srv/api
ENV ENV="/root/.ashrc"
COPY ./docker/dev-api-start.sh /tmp/start.sh
CMD ["ash", "/tmp/start.sh"]
