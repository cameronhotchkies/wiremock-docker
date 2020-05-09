WIREMOCK_VERSION=$1

# Get the version of WireMock
wget -qO- https://github.com/tomakehurst/wiremock/archive/${WIREMOCK_VERSION}.tar.gz | tar xz

IMAGE_NAME_BASE=semisafe/wiremock
IMAGE_NAME="$IMAGE_NAME_BASE:$WIREMOCK_VERSION"

# Build the docker image
docker build --build-arg wiremock_version=$WIREMOCK_VERSION --rm -t $IMAGE_NAME .

docker tag $IMAGE_NAME $IMAGE_NAME_BASE:latest
