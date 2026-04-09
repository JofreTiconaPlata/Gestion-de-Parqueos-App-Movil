import { Hono } from 'hono'

export const healthRoutes = new Hono()

healthRoutes.get('/health', (c) => {
  return c.json({
    ok: true,
    service: 'gestion-de-parqueos-api',
    timestamp: new Date().toISOString()
  })
})
