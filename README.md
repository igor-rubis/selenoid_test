# selenoid_test
[Full documentation](http://aerokube.com/selenoid/latest)

### pull browser images
```bash
docker pull selenoid/chrome:62.0
```
```bash
docker pull selenoid/firefox:57.0
```
[ browsers config file](/config/browsers.json)

### start selenoid
```bash
docker run -d \
--name selenoid \
-p 4444:4444 \
-v /var/run/docker.sock:/var/run/docker.sock \
-v `pwd`/config/:/etc/selenoid/:ro \
aerokube/selenoid:latest-release
```

### reload configuration
```bash
kill -HUP <pid>
docker kill -s HUP <container-id-or-name>
```

### links
* [hub url: http://localhost:4444/wd/hub](http://localhost:4444/wd/hub)
* [hub status url: http://localhost:4444/status](http://localhost:4444/status)

### Issues encountered
##### Issue 1
```
create container: Error response from daemon: client version 1.36 is too new. Maximum supported API version is 1.35
```
Resulution: 
```
-e DOCKER_API_VERSION=1.35
```

##### Issue 2
selenoid logs: 
```bash
docker logs selenoid
```

##### Issue 3
```
Unable to parse remote response: unknown command: wd/hub/session
```
Resulution: 
```
For Chrome images "path" is "/" instead of "/wd/hub"
```