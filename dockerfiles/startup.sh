for i in {1..3}
do
    echo "output: $i"
    sudo docker run -v /var/run/docker.sock:/var/run/docker.sock --dns 8.8.8.8 -p 22 --name host$i -h host$i -d --privileged  -i -t rich/ece_node
    IP_node=$(docker inspect --format "{{ .NetworkSettings.IPAddress }}" host$i)
    echo "host$i Server started at $IP_node"
done
