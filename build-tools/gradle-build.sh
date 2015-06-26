#!/bin/sh
docker run -v `pwd`:/home/java/sources --rm neo9polska/gradle:2-jdk8 gradle $@
