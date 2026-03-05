# Étape 1 : build
FROM node:22-alpine AS build
WORKDIR /app

# Copier package.json + package-lock.json pour installer deps
COPY package*.json ./

# Installer les dépendances
RUN npm ci

# Copier tout le projet
COPY . .

# Build l'app
RUN npm run build

# Étape 2 : servir statiquement
FROM node:22-alpine AS runner
WORKDIR /app

# Installer serve pour servir les fichiers statiques
RUN npm install -g serve

# Copier le build
COPY --from=build /app/dist ./dist

# Exposer le port
EXPOSE 3000

# Lancer le serveur
CMD ["serve", "-s", "dist", "-l", "3000"]
