# low-red

run with: docker run -it -p 1880:1880 --name mynodered cocopapaya/low-red:latest
make sure to stop/start mynodered after that, so that changes will be persistet across start/stops

The ultimate idea is to be able to run docker containers on the host from node-red on the client docker container.
There are various ways of doing that. For now we will map the host socket to the client socket with the -v option.
Then use must setup node-red to interact with the docker instance it is running in. Calls in the local docker get dispatched to the host docker.
Lastly, install  https://flows.nodered.org/node/node-red-contrib-dockerode for easy interaction with docker from within node-red.

We are then able to react to github webhooks in a generic way.
