#Menentukan image untuk stage builder, yaitu node.js ver. 21
FROM node:18-alpine as builder

#Menentukan workdir /app
WORKDIR /app

#Menyalin package dan package-lock ke workdir
COPY package*.json ./

#Menjalankan npm ci untuk menginstal dependencies
RUN npm ci

#Menyalin semua berkas berekstensi .js ke workdir
COPY ./*.js ./

#Mengekspos port 3001
EXPOSE 3001

#Menjalankan perintah "node index.js"
CMD [ "node", "index.js" ]