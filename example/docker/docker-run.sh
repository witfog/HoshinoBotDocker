#!/bin/bash
docker run --name hoshino \
    -v $PWD/../volumes/modules:/HoshinoBot/hoshino/modules \
    -v $PWD/../volumes/config:/HoshinoBot/hoshino/config \
    -v $PWD/../volumes/img:/HoshinoBot/img \
    -v $PWD/../volumes/requirements:/HoshinoBot/requirements \
    -d ghcr.io/witfog/hoshinobot