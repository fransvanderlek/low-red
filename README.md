# low-red

run with: docker run -it -p 1880:1880 --name mynodered cocopapaya/low-red:latest
make sure to stop/start mynodered after that, so that changes will be persistet across start/stops

The ultimate idea is to be able to run docker containers on the host from node-red on the client docker container.
The plan is to use the Docker In Docker method so that the host docker socket is exposed in the client conatiner.
Then use must setup node-red to interact with the docker instance it is running in. Calls in the local docker get dispatched to the host docker.
Lastly, install node-red nodes for easy docker interaction: https://flows.nodered.org/node/node-red-contrib-dockerode
