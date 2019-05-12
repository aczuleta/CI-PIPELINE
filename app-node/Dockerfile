FROM node:8.11.4-alpine

# Change working directory
WORKDIR "/app"

# Update packages and install dependency packages for services
RUN apk  update \
 && apk upgrade -y \
 && apk cache clean \
 && echo 'Finished installing dependencies'

# Install npm production packages
COPY package.json /app/
RUN cd /app; npm install --production

COPY . /app

ENV NODE_ENV production
ENV PORT 3100

EXPOSE 3100

CMD ["npm", "start"]
