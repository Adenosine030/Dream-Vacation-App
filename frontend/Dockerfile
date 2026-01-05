# Build stage
FROM node:18-alpine AS build

WORKDIR /app
ENV NODE_OPTIONS=--openssl-legacy-provider

COPY package*.json ./
RUN npm install --no-audit --no-fund

COPY . .
RUN npm run build

# Production stage
FROM nginx:alpine

# Copy build output to nginx
COPY --from=build /app/build /usr/share/nginx/html

# Copy nginx config if you have one
# COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

