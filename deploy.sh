#!/bin/sh

# Install PHP dependencies
composer install --no-interaction --prefer-dist --optimize-autoloader

# Install Node.js dependencies
npm install

# Build frontend assets
npm run build

# Run database migrations
php artisan migrate --force
