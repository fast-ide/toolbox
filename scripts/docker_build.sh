set -ex

pushd linuxbrew/docker/${OS_FAMILY}-${OS_VERSION}
tar -czh . | docker build -t fastide/linuxbrew-${OS_FAMILY}:${OS_VERSION} -
popd
cd docker/${OS_FAMILY}-${OS_VERSION}
tar -czh . | docker build -t fastide/bootstap-${OS_FAMILY}:${OS_VERSION} -
