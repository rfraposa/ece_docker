sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -dns 127.0.0.1 -p 22 -name host1 -h host1 -d --privileged=true  -i -t rich/ece_node
