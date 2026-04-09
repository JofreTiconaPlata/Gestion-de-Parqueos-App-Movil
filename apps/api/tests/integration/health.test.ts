import { describe, expect, it } from 'vitest'
import app from '../../src/app.js'

describe('GET /health', () => {
  it('should return service health status', async () => {
    const res = await app.request('/health')
    const data = await res.json()

    expect(res.status).toBe(200)
    expect(data.ok).toBe(true)
    expect(data.service).toBe('gestion-de-parqueos-api')
  })
})
