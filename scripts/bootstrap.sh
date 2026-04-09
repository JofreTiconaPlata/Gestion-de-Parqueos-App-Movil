#!/usr/bin/env bash
set -e

echo "Instalando dependencias del monorepo..."
pnpm install

echo "Recuerda crear apps/api/.env a partir de .env.example"
