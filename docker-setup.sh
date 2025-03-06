#!/bin/bash

# Stop and remove existing containers (if any)
echo "Stopping any existing containers..."
docker-compose down

# Build and start containers
echo "Building and starting containers..."
docker-compose up -d --build

# Wait for the backend to be ready
echo "Waiting for backend to be ready..."
sleep 10

# Create a superuser (optional)
echo "Creating a superuser (admin/admin)..."
docker-compose exec backend python manage.py shell -c "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'admin') if not User.objects.filter(username='admin').exists() else None"

# Show container status
echo "Container status:"
docker-compose ps

echo ""
echo "Setup complete! Your Todo App is now running:"
echo "- Frontend: http://localhost"
echo "- Backend API: http://localhost:8000/api/todos/"
echo "- Admin interface: http://localhost:8000/admin/ (username: admin, password: admin)"
echo ""
echo "To stop the application, run: docker-compose down" 