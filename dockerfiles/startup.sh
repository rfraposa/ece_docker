sudo docker run -v /var/run/docker.sock:/var/run/docker.sock --dns 8.8.8.8 -p 22 --name host1 -h host1 -d --privileged=true  -i -t rich/ece_node
