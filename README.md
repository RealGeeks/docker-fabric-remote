# docker-fabric-remote

Want to run fabric-remote in Docker?  Well you came to the right place.

```
docker run -e PASSWORD="asdfasdf" -e FABFILE_PATH="/data/fabfile" -e SSH_KEY="yourgiantsshprivatekey" -v /home/kevin/your_fabfile_directory:/data -p 1234:1234 -e DEBUG=True  realgeeks/fabric-remote
```
