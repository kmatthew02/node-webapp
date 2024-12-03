FROM node:lts-slim

COPY . /home/node/app
EXPOSE 3000
WORKDIR /home/node/app
RUN <<EOF
npm install
EOF



CMD ["npm", "start"]
