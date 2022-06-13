docker run \
  --rm \
  --detach \
  --publish 8070:8070 \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp:/tmp \
  --name nuclio-dashboard \
  quay.io/nuclio/dashboard:stable-amd64



http://localhost:8070/projects



curl -s https://api.github.com/repos/nuclio/nuclio/releases/latest \
			| grep -i "browser_download_url.*nuctl.*$(uname)" \
			| cut -d : -f 2,3 \
			| tr -d \" \
			| wget -O nuctl -qi - && chmod +x nuctl
			
			
