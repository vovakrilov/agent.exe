#!/bin/bash

echo "Starting Nextcloud Server..."
echo "================================"

# Check if Docker is running
if ! sudo docker info > /dev/null 2>&1; then
    echo "Docker is not running. Starting Docker daemon..."
    sudo dockerd &
    sleep 5
fi

# Pull the latest images
echo "Pulling Docker images..."
sudo docker compose pull

# Start the services
echo "Starting Nextcloud services..."
sudo docker compose up -d

echo ""
echo "================================"
echo "Nextcloud server is starting up!"
echo "================================"
echo ""
echo "🌐 Web Interface: http://localhost:8080"
echo "⏱️  Please wait 1-2 minutes for initial setup"
echo ""
echo "To check status: sudo docker compose ps"
echo "To view logs: sudo docker compose logs -f nextcloud-app"
echo "To stop: sudo docker compose down"
echo ""
echo "First time setup:"
echo "1. Open http://localhost:8080 in your browser"
echo "2. Create your admin account"
echo "3. Database is already configured automatically"
echo ""