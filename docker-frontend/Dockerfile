# Node.js가 설치된 경량 이미지 사용
FROM node:18-alpine AS build-stage

# 작업 디렉토리 설정
WORKDIR /app

# 프로젝트 파일 복사
COPY . .

# 의존성 설치
RUN npm install

# Vue 앱 빌드
RUN npm run build

# Nginx 경량 이미지 사용
FROM nginx:stable-alpine AS production-stage

# 사용자 정의 nginx 설정 복사
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 빌드된 정적 파일을 Nginx 루트로 복사
COPY --from=build-stage /app/dist /usr/share/nginx/html

# 컨테이너 외부에 노출할 포트 설정
EXPOSE 80

# Nginx 실행 명령어
CMD ["nginx", "-g", "daemon off;"]