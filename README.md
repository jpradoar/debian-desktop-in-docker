# debian-desktop-in-docker
run debian desktop in docker (lxde)

### Build 
    docker build -t docker-desktop .

### Run 
    docker run \
    --rm \
    -tid \
    --privileged \
    --name desktop \
    -p 5901:5901 \
    -v $PWD/shared:/root/Desktop/shared \
    -v /dev/shm:/dev/shm \
    -v $PWD/entrypoint.sh:/entrypoint.sh \
    -v /dev/snd:/dev/snd\
    docker-desktop


### Connect
    vncviewer 127.0.0.1:5901
