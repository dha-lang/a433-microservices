#Menggunakan base image node js ver. 14
FROM node:14-alpine

#Menentukan workdir /app
WORKDIR /app

#Menyalin source code ke workdir
COPY . /app

#Menentukan app berjalan di prod. mode dan menggunakan item-db sbg db host
ENV NODE_ENV=production DB_HOST=item-db

#Menginstal dependencies dan menjalankan build
RUN npm install --production --unsafe-perm && npm run build

#Mengekspos port 
EXPOSE 8080

#Menjalankan server
CMD ["npm", "start"]