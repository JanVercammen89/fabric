FROM talaal/node:8.16.2

WORKDIR /usr/src/app

COPY app ./
COPY *.js* ./
COPY testAPIs.sh ./
RUN npm install
COPY . .
EXPOSE 4000
CMD [ "npm", "start" ]