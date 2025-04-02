# OpenJDK 17이 설치된 경량 리눅스 이미지 사용
FROM openjdk:17-jdk-slim

# 빌드된 JAR 파일을 컨테이너 내부로 복사 (app.jar로 저장)
COPY build/libs/docker-backend-0.0.1-SNAPSHOT.jar app.jar

# 컨테이너가 사용할 포트 8080을 외부에 노출
EXPOSE 8080

# 컨테이너 시작 시 JAR 파일을 실행
ENTRYPOINT ["java", "-jar", "/app.jar"]