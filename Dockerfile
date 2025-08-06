# Usa una imagen oficial de Node.js como base
FROM node:22
 
# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app
 
# Copia los archivos package.json y package-lock.json para instalar dependencias
COPY package*.json ./
 
# Instala las dependencias
RUN npm install
 
# Copia todo el código fuente al contenedor
COPY . .
 
# Expone el puerto donde correrá la app
EXPOSE 3000
 
# Comando para ejecutar la app
CMD ["node", "app.js"]