import { Hono } from 'hono'
import { healthRoutes } from './modules/health.routes.js'

const app = new Hono()

app.get('/', (c) => {
  return c.json({
    message: 'API de Gestión de Parqueos',
    docs: '/health'
  })
})

app.route('/', healthRoutes)

export default app
