FROM node:8.9-alpine
MAINTAINER elliswu<ellis.w@inwinstack.com>

COPY ikm-dashboard/ /ikm-dashboard
COPY run.sh /ikm-dashboard
WORKDIR /ikm-dashboard
RUN npm install

EXPOSE 9090

ENTRYPOINT ["sh", "/ikm-dashboard/run.sh"]
