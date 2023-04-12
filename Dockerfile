FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install
RUN npm install express

COPY . .

EXPOSE 8000

CMD ["npm", "start"]