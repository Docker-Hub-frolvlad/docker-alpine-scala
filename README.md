[![Docker Stars](https://img.shields.io/docker/stars/frolvlad/alpine-scala.svg?style=flat-square)](https://hub.docker.com/r/frolvlad/alpine-scala/)
[![Docker Pulls](https://img.shields.io/docker/pulls/frolvlad/alpine-scala.svg?style=flat-square)](https://hub.docker.com/r/frolvlad/alpine-scala/)


Scala Docker image
==================

This image is based on Alpine Linux image, which is only a 5MB image, and contains
[Scala](http://www.scala-lang.org/) based on Oracle JDK 8
[`frolvlad/alpine-oraclejdk8` slim image](https://hub.docker.com/r/frolvlad/alpine-oraclejdk8/).

Total size of this image is only:

[![](https://badge.imagelayers.io/frolvlad/alpine-scala:latest.svg)](https://imagelayers.io/?images=frolvlad/alpine-scala:latest 'Get your own badge on imagelayers.io')



Usage Example
-------------

```bash
$ docker run --rm frolvlad/alpine-scala scala -e 'object HelloWorld extends App { println("Hello World") }; HelloWorld.main(null)'
```

Once you have run this command you will get printed 'Hello World' from Scala!
