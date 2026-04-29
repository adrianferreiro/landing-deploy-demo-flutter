# Landing Deploy Demo

Landing page Flutter Web con deploy automático a Hostinger via GitHub Actions.

## Setup

1. Crear repo en GitHub y subir este proyecto
2. En GitHub → Settings → Secrets → Actions, agregar:
   - `FTP_SERVER` → tu servidor FTP de Hostinger (ej: `ftp.tudominio.com`)
   - `FTP_USERNAME` → usuario FTP de Hostinger
   - `FTP_PASSWORD` → contraseña FTP
3. Hacer push a `main` y el deploy se ejecuta automáticamente

## Datos FTP de Hostinger

Los encontrás en: Panel de Hostinger → Hosting → Administrar → Cuentas FTP

## Build local

```bash
flutter build web --release
```

Los archivos quedan en `build/web/`.
