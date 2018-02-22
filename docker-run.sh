#!/bin/sh

docker run \
  --name ovirt-agent \
  --restart=always \
  --privileged=true \
  --cap-add=ALL \
  --net=host \
  -t \
  -v /dev/virtio-ports:/dev/virtio-ports \
  -v /etc/os-release:/etc/os-release:ro \
  -v /dev:/dev \
  -v /proc:/hostproc \
  -v /run/systemd:/run/systemd \
  -v /var/log/ovirt-guest-agent:/var/log/ovirt-guest-agent \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  interlegis/ovirt-guest-agent-coreos:latest
