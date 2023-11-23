FROM node:18

LABEL maintainer="Pieterjan Van Landeghem <pieterjan.vanlandeghem@student.hogent.be>"
LABEL description="Lab 1 docker revisited"

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

# Copy the application code to the container
COPY . .

EXPOSE 3000

CMD ["yarn", "start"]
