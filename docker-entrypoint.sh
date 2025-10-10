#!/bin/sh
set -e

until npx prisma db pull 2>/dev/null; do
  sleep 2
done

npx prisma generate
npm run build

npm run start
