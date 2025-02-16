FROM docker:dind-rootless
ARG TTYD_URL=https://github.com/tsl0922/ttyd/releases/download/1.7.7/ttyd.x86_64

USER root
RUN apk add --no-cache runit tini
RUN wget -O /usr/local/bin/ttyd ${TTYD_URL} && chmod +x /usr/local/bin/ttyd
COPY service /etc/service

USER rootless
ENTRYPOINT ["tini", "--"]
CMD ["runsvdir", "/etc/service"]
