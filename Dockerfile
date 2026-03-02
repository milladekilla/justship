# ARG for flexible node version, defaulting to 18
ARG NODE_VERSION=24-alpine

# ==========================================
# Base Stage: Install dependencies
# ==========================================
FROM node:${NODE_VERSION} AS base

#Install git
RUN apk --no-cache add git

WORKDIR /app

# Install dependencies only when needed
COPY package.json ./

# Install all dependencies (including devDependencies)
RUN npm install

# Prepare database
# RUN npm run generate && npm run migrate

# ==========================================
# Development Stage
#Target: dev
# ==========================================
FROM base AS dev

ENV NODE_ENV=development

# expose the port 
EXPOSE 5173

# Copy the rest of the application code
COPY . .

# Start the dev server
CMD ["npm", "run", "dev", "--", "--host"]

# ==========================================
# Test Stage
# Target: test
# ==========================================
FROM base AS test

ENV NODE_ENV=test

COPY . .

# Run tests
# You can override this CMD with "npm run lint" or "npm run check" as needed
CMD ["npm", "run", "test"]

# ==========================================
# Builder Stage: Build the application
# ==========================================
FROM base AS builder

WORKDIR /app

COPY . .

# Build the application
RUN npm run build

# Prune dev dependencies to keep the image small
RUN npm prune --production

# ==========================================
# Production Stage
# Target: prod
# ==========================================
FROM node:${NODE_VERSION} AS prod

WORKDIR /app

ENV NODE_ENV=production

# Copy only the necessary files from the builder stage
# Copy the build output (assuming adapter-node is used)
COPY --from=builder /app/build ./build
COPY --from=builder /app/package.json ./package.json

# Copy production node_modules
COPY --from=builder /app/node_modules ./node_modules

# Expose the port the app runs on (usually 3000 for adapter-node)
EXPOSE 3000

# Command to run the application
CMD ["node", "build"]
