set -ex

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push fastide/bootstrap-${OS_FAMILY}:${OS_VERSION}
