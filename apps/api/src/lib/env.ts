import 'dotenv/config'

export const env = {
  NODE_ENV: process.env.NODE_ENV ?? 'development',
  PORT: Number(process.env.PORT ?? 3000),
  DATABASE_URL: process.env.DATABASE_URL ?? '',
  DIRECT_DATABASE_URL: process.env.DIRECT_DATABASE_URL ?? '',
  JWT_SECRET: process.env.JWT_SECRET ?? 'change-me',
  CORS_ORIGIN: process.env.CORS_ORIGIN ?? '*'
}
