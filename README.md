# remote-desktop-test-image

This image extends the `danielguerra/ubuntu-xrdp:18.04` image with [guacamole](https://guacamole.apache.org/) support added.

This image is to be used for testing the [Desktop Service](https://github.com/panosc-portal/desktop-service) for the PaNOSC portal.

### Running the container

docker run -d --name remote-desktop-test-image -p 4822:4822 panosc/remote-desktop-test-image

