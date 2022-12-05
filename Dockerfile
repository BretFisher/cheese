FROM nginx:alpine AS base

WORKDIR /usr/share/nginx/html

COPY . .

FROM base as cheddar
RUN sed -i 's/cheese-name/Cheddar/g' index.html

FROM base as stilton
RUN sed -i 's/cheese-name/Stilton/g' index.html

FROM base as wensleydale
RUN sed -i 's/cheese-name/Wensleydale/g' index.html
