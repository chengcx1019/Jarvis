FROM node:latest

USER root
RUN mkdir -p /data/jarvis
COPY ./jarvis /data/jarvis

RUN npm config set registry https://registry.npm.taobao.org

RUN cd /data/jarvis && npm build


CMD cd /data/jarvis && HUBOT_SLACK_TOKEN=xoxb-222935299232-625500868769-N8GTCUS0C1QAUD0durSvoqs8 ./bin/hubot --adapter slack
