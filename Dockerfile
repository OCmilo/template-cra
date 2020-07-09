FROM node:14-alpine3.12 AS build_stage

WORKDIR /app
COPY ./ ./
RUN yarn install --frozen-lockfile 
RUN yarn run build

FROM nginx:1.9-alpine

COPY --from=build_stage /app/build /var/www
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx","-g","daemon off;"]