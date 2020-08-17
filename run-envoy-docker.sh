set -x
. common-env.sh
docker rm -f envoy
docker build -t envoy:v1 .
docker run --name envoy -e ENVOY_UID=777 -e ENVOY_GID=777 -p 9901:9901 -p 10000:10000 envoy:v1
