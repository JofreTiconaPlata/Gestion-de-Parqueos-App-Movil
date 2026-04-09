import { serve } from '@hono/node-server'
import app from './app.js'
import { env } from './lib/env.js'

serve(
  {
    fetch: app.fetch,
    port: env.PORT
  },
  (info) => {
    console.log(`API running on http://localhost:${info.port}`)
  }
)
