# Node.js 이미지 사용
FROM node:19

# 앱 디렉토리 생성
WORKDIR /app

# 앱 의존성 설치
COPY package*.json ./
RUN npm install

# 앱 소스 추가
ENV TZ=Asia/Seoul
COPY . .

# 앱 실행
CMD ["npm", "start"]