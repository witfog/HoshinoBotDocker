#!/bin/bash
docker run --name hoshino -v modules:/HoshinoBot/hoshino/modules -v config:/HoshinoBot/hoshino/config -d ghcr.io/witfog/hoshinobot