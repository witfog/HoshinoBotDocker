#!/bin/bash
docker run --name hoshino \
    -v $PWD/../volumes/modules:/HoshinoBot/hoshino/modules \
    -v $PWD/../volumes/config:/HoshinoBot/hoshino/config \
    -v $PWD/../volumes/img:/HoshinoBot/img \
    -d ghcr.io/witfog/hoshinobot