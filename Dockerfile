FROM node:8.13.0-alpine

RUN mkdir -p /workspace/app
WORKDIR /workspace/app

RUN chown -R node /workspace/app
#Tssd
USER node

COPY ./node_modules /workspace/app/node_modules
COPY ./node_modules/@nebulario/nodeflow-local-server/dist/index.js /workspace/app/dist/index.js

ENTRYPOINT ["node"]
CMD ["dist/index.js"]
