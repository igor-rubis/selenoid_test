# selenoid_test

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
### links
* [hub status url](http://localhost:4444/status)