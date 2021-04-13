# We use this dockerfile to build a packed tarfile which we import in our `docker` tests
FROM node:current
COPY . /resume
WORKDIR /resume
RUN npm ci
RUN npm i -g gulp-cli
RUN gulp configure-insiders && gulp LKG && gulp clean && npm pack .