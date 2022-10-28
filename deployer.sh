#!/bin/sh 
set -e

echo "Deploying Application...."

#Entering in Maintenance mode

(php artisan down --maessage 'The app is being updated quickly. Please try again after a min) || true

	git pull origin main

# Exit Maintanence mode
php artisan up

echo  "Application Deployed "
 
