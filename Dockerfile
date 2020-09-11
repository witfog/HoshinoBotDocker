FROM alpine/git:latest AS builder

WORKDIR /

RUN set -ex && \
    git clone https://github.com/Ice-Cirno/HoshinoBot.git

FROM python:3.8-slim-buster


WORKDIR /HoshinoBot/

COPY --from=builder /HoshinoBot/ /HoshinoBot/

RUN pip install -r requirements.txt

COPY ./docker_entrypoint.sh .

RUN set -ex && \
    ls && \
    chmod +x docker_entrypoint.sh && \
    mkdir hoshino/modules_temp && \
    mv hoshino/modules/* hoshino/modules_temp

ENTRYPOINT [ "./docker_entrypoint.sh"]

