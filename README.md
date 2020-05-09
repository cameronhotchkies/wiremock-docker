WireMock Docker Image
=====================

A very simple image that starts [WireMock](http://wiremock.org). If an argument
is passed to the image, it is passed as the `--root-dir` argument, allowing a
mounted volume to be the source for stub mapping files.
