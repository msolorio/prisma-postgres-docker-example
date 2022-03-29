# add the Node.js docker image
FROM node:16

# Create directory that runs the app on docker
WORKDIR /app

COPY package*.json ./
COPY prisma ./prisma/
COPY .env ./
COPY tsconfig.json ./
RUN npm install
RUN npx prisma generate

COPY . .

# Not supported by heroku
# EXPOSE 3000

CMD ["npm", "start"]
