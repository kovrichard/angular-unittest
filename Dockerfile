FROM node:16-alpine3.15

RUN apk update && apk upgrade
RUN apk add chromium git && npm add -g @angular/cli

ENV CHROME_BIN=/usr/bin/chromium-browser
