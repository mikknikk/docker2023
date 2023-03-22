FROM node

WORKDIR /usr/src/app

COPY . .

RUN npm install
RUN npm install -g serve

EXPOSE 3000

CMD ["serve", "-s", "build", "-l", "3000"]
