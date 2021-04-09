FROM node:15

RUN git clone https://github.com/redis-developer/redis-hacker-news-demo.git

WORKDIR "/redis-hacker-news-demo"

RUN npm install
RUN npm run build

CMD npm start
EXPOSE 5000

COPY .env /redis-hacker-news-demo
