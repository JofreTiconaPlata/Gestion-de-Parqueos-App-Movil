#!/usr/bin/env bash
set -euo pipefail

mkdir -p \
  apps/api/src/lib \
  apps/api/src/middlewares \
  apps/api/src/modules/{auth,usuarios,vehiculos,espacios,registros,tarifas,pagos} \
  apps/api/src/shared/{constants,types,utils} \
  apps/api/prisma/migrations \
  apps/api/tests/{unit,integration} \
  apps/mobile/lib/app \
  apps/mobile/lib/core/{constants,errors,helpers,widgets} \
  apps/mobile/lib/services \
  apps/mobile/lib/models \
  apps/mobile/lib/features/auth/{data,domain,presentation} \
  apps/mobile/lib/features/dashboard/presentation \
  apps/mobile/lib/features/vehiculos/{data,domain,presentation} \
  apps/mobile/lib/features/espacios/presentation \
  apps/mobile/lib/features/registros/presentation \
  apps/mobile/lib/features/tarifas/presentation \
  apps/mobile/lib/features/historial/presentation \
  apps/mobile/lib/shared/{widgets,providers} \
  apps/mobile/test \
  apps/mobile/integration_test \
  docs/{architecture,api,adr,testing}

touch \
  apps/api/src/modules/auth/.gitkeep \
  apps/api/src/modules/usuarios/.gitkeep \
  apps/api/src/modules/vehiculos/.gitkeep \
  apps/api/src/modules/espacios/.gitkeep \
  apps/api/src/modules/registros/.gitkeep \
  apps/api/src/modules/tarifas/.gitkeep \
  apps/api/src/modules/pagos/.gitkeep \
  apps/mobile/lib/features/vehiculos/presentation/.gitkeep \
  apps/mobile/lib/features/espacios/presentation/.gitkeep \
  apps/mobile/lib/features/registros/presentation/.gitkeep \
  apps/mobile/lib/features/tarifas/presentation/.gitkeep \
  apps/mobile/lib/features/historial/presentation/.gitkeep

echo "Estructura creada correctamente."
