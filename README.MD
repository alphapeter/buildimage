# Dockerfile for Ubuntu base build image
https://hub.docker.com/r/alphapeter/buildimage/

## Using image
docker pull alphapeter/buildimage

### building golang

docker run --rm -v $(pwd):/go/src/github.com/<name>/<repository> -it -w $(pwd):/go/src/github.com/<name>/<repository> alphapeter/buildimage go build


## publish new image

docker build -t alphapeter/buildimage:<date> .
docker login -u <username> -p <password>
docker push alphapeter/buildimage:<date>

