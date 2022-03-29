docker compose up -d --build

docker exec -it prisma-postgres-api npx prisma migrate dev --name 'migrate changes'
