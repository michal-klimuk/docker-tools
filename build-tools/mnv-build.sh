#!/bin/sh
docker run -v `pwd`:/home/java/sources --rm neo9polska/maven:3-jdk8 $@
