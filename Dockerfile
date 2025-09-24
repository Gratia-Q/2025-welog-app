# 정적 웹 Stub (nginx, 포트 80)
FROM nginx:alpine

# 기본 페이지/헬스 엔드포인트 생성
RUN rm -rf /usr/share/nginx/html/* && \
    printf 'ok' > /usr/share/nginx/html/healthz && \
    printf '<h1>welog web (stub)</h1>' > /usr/share/nginx/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
