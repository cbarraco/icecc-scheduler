# icecc-scheduler
The icecc scheduler running in a Docker container. You can use this to help compile your C/C++ builds on multiple computers, making them much faster. Learn more about icecream here: https://github.com/icecc/icecream

By running this on a remote computer, that computer will become the scheduler for your icecream build infrastructure. The scheduler essentially distributes work to the worker nodes which are running the iceccd daemon. I also have a Docker image for setting up the icecc daemon here: https://github.com/cbarraco/icecc-daemon

# Running the Container
You can use this command to pull the container from Docker Hub and run it:
```bash
    docker run -it --net=host -d --restart=unless-stopped cbarraco/icecc-scheduler
```
I've had the best luck using --net=host but you might be able to get it to work using a bridge network.
