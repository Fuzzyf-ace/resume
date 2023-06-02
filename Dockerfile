#baseImage coming from
FROM --platform=linux/amd64 node   

# COPY . /library/library-frontend
# WORKDIR /library/library-frontend
# RUN npm install
# same as the following:

## Layer structure
## When a layer changed, all subsequent layer will get rebuild when build, otherwise won't.
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY tsconfig.json ./
COPY ./public ./public
COPY ./src ./src
## Layer structure

EXPOSE 3000

CMD ["npm", "start"]