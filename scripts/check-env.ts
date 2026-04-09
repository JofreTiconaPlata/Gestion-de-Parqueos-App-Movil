const required = ['DATABASE_URL', 'DIRECT_DATABASE_URL', 'JWT_SECRET']

const missing = required.filter((key) => !process.env[key])

if (missing.length > 0) {
  console.error(`Missing environment variables: ${missing.join(', ')}`)
  process.exit(1)
}

console.log('Environment variables OK')
