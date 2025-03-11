-- 데이터베이스 생성 (docker-compose.yml에서 이미 mydb를 생성하므로 필요 없음)
-- CREATE DATABASE dockerdb;

-- 테이블 생성
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 기본 데이터 추가
INSERT INTO users (name, email) VALUES ('Admin', 'admin@example.com')
ON CONFLICT (email) DO NOTHING;