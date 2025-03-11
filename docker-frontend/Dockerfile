# Vue 빌드 단계
FROM node:18 AS build
WORKDIR /app

# package.json 및 package-lock.json 복사 후 의존성 설치
COPY package*.json ./
RUN npm install

# 프로젝트 코드 복사 및 빌드 실행
COPY . .
RUN npm run build

# Nginx를 사용하여 정적 파일 서빙
FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html

# Nginx 설정 파일 복사
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]