# Creación de imagen para el proyecto node
FROM node:12

# Indica que van a estar en este directorio todos los archivos del proyecto
WORKDIR /app

# Se copian los 2 archivos fundamentales para el proyecto (package.json, package-lock.json)
COPY package*.json ./

# Se ejecuta el comando NPM INSTALL para poder descargar las dependecias del proyecto.
RUN npm install

# Se copia todas las fuentes del proyecto dentro del container en la carpeta definida.
COPY . .

# Comando que se ejecuta para poder iniciar la aplicación.
CMD ["npm", "start"]