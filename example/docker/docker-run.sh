#!/bin/bash
docker run --name hoshino \
    -v ../volumes/modules:/HoshinoBot/hoshino/modules \
    -v ../volumes/config:/HoshinoBot/hoshino/config \
    -v ../volumes/img:/HoshinoBot/img \
    -d ghcr.io/witfog/hoshinobot