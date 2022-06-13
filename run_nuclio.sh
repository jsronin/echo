docker run \
  --rm \
  --detach \
  --publish 8070:8070 \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp:/tmp \
  --name nuclio-dashboard \
  quay.io/nuclio/dashboard:stable-amd64
