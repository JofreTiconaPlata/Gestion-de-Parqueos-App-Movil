# Gestión de Parqueos App Móvil

Monorepo para una solución de **gestión de parqueos** con:

- **App móvil** en Flutter
- **API** en TypeScript con Hono
- **Base de datos** PostgreSQL con Prisma
- **CI/CD** con GitHub Actions
- **Deploy de API** en Vercel

## Objetivo del repositorio

Este repositorio está preparado para trabajar de forma ordenada desde el inicio, con una base sólida para:

- desarrollo por módulos
- pruebas automatizadas
- documentación técnica
- despliegue de la API
- construcción de la app Android

## Stack oficial

### Backend
- TypeScript
- Hono
- Prisma ORM
- PostgreSQL
- Vitest

### Mobile
- Flutter
- Dart
- flutter_test
- integration_test

### Infraestructura y calidad
- pnpm workspaces
- Turborepo
- GitHub Actions
- Vercel

## Estructura del repositorio

```text
.
├── apps/
│   ├── api/
│   └── mobile/
├── docs/
├── packages/
├── scripts/
├── .github/workflows/
├── package.json
├── pnpm-workspace.yaml
└── turbo.json
```

## Convenciones del proyecto

### Ramas
- `main`: estable / producción
- `develop`: integración del equipo
- `feature/...`: funcionalidades
- `fix/...`: correcciones
- `docs/...`: documentación

### Commits sugeridos
- `feat:` nueva funcionalidad
- `fix:` corrección
- `docs:` documentación
- `refactor:` mejora interna
- `test:` pruebas
- `chore:` mantenimiento

Ejemplos:

```bash
git commit -m "feat(api): crear modulo de vehiculos"
git commit -m "test(api): agregar pruebas de healthcheck"
git commit -m "docs(repo): mejorar readme principal"
```

## Requisitos locales

### Generales
- Git
- Node.js 20+
- pnpm 10+

### Para backend
- PostgreSQL local o remoto

### Para mobile
- Flutter SDK
- Android Studio (SDK y emulador)
- VS Code

## Primer arranque

### 1. Clonar
```bash
git clone https://github.com/JofreTiconaPlata/Gestion-de-Parqueos-App-Movil.git
cd Gestion-de-Parqueos-App-Movil
```

### 2. Instalar dependencias del monorepo
```bash
pnpm install
```

### 3. Configurar variables del backend
```bash
cp apps/api/.env.example apps/api/.env
```

### 4. Generar cliente Prisma
```bash
cd apps/api
pnpm prisma:generate
```

### 5. Levantar API en local
```bash
cd ../..
pnpm dev:api
```

### 6. Levantar app móvil
```bash
pnpm dev:mobile
```

## Scripts principales

### Raíz
```bash
pnpm dev:api
pnpm dev:mobile
pnpm lint
pnpm typecheck
pnpm test
pnpm build
pnpm check
```

### API
```bash
cd apps/api
pnpm dev
pnpm build
pnpm test
pnpm test:coverage
pnpm prisma:generate
pnpm prisma:migrate
pnpm prisma:studio
```

### Mobile
```bash
cd apps/mobile
flutter pub get
flutter analyze
flutter test
flutter test integration_test
flutter run
flutter build apk
flutter build appbundle
```

## Estrategia de pruebas

### API
- unit tests para servicios, utilidades y reglas de negocio
- integration tests para rutas, auth y acceso a datos

### Mobile
- unit tests para lógica pura
- widget tests para UI
- integration tests para flujos completos

## Estrategia de despliegue

### API en Vercel
- conectar el repositorio a Vercel
- seleccionar `apps/api` como **Root Directory**
- usar las variables de entorno del backend en Vercel
- desplegar desde `main`

### App móvil
La app móvil **no se despliega en Vercel**. Se construye como:
- APK para pruebas
- AAB para Google Play

## Variables de entorno del backend

Crear `apps/api/.env` con valores reales a partir de `apps/api/.env.example`.

Variables base:

```env
NODE_ENV=development
PORT=3000
DATABASE_URL=
DIRECT_DATABASE_URL=
JWT_SECRET=
CORS_ORIGIN=*
```

## Qué debes subir al repo

Sí debes subir:
- código fuente
- documentación
- workflows
- `package.json`, `pnpm-workspace.yaml`, `turbo.json`
- `prisma/schema.prisma`
- `.env.example`

No debes subir:
- `.env`
- `node_modules`
- artefactos de build
- claves privadas
- APK/AAB finales si no es un release controlado

## Cómo subir esta base al repositorio actual

Si esta estructura ya está en tu carpeta local:

```bash
git checkout -b feature/base-monorepo

git add .
git commit -m "chore(repo): inicializar monorepo con api, mobile, docs y workflows"
git push -u origin feature/base-monorepo
```

Luego creas Pull Request hacia `develop` o `main`, según tu flujo.

## Roadmap técnico sugerido

### Fase 1
- base del monorepo
- healthcheck API
- prisma schema inicial
- app Flutter base

### Fase 2
- auth
- usuarios
- vehículos
- espacios

### Fase 3
- registros de ingreso y salida
- cálculo de tarifas
- historial y pagos

### Fase 4
- dashboard/admin web opcional
- cobertura de pruebas
- pipeline de release Android

## Licencia

Definir por el equipo.
