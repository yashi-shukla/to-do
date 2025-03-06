# Todo App

A simple Todo application built with Django REST Framework and React.

## Description

This application allows users to create, read, update, and delete todo items. Each todo item has a title, description, and completion status.

## Features

- RESTful API backend using Django REST Framework
- React frontend with modern UI
- CRUD operations for todo items
- SQLite database for data storage
- CORS support for frontend-backend communication
- Docker deployment for easy setup and deployment

## Technologies Used

### Backend
- Django 3.1
- Django REST Framework
- SQLite3
- CORS Headers

### Frontend
- React 17
- Axios for API communication
- Bootstrap 5 for styling
- Reactstrap components

### DevOps
- Docker & Docker Compose
- Nginx (for serving the frontend)

## Project Structure

- `backend/` - Core Django settings and configurations
- `todo/` - Main Django application with models, views, and API logic
- `frontend/` - React application for the user interface
- `db.sqlite3` - SQLite database file
- `manage.py` - Django management script
- `docker-compose.yml` - Docker Compose configuration file
- `Dockerfile` - Docker configuration files for backend and frontend

## Setup and Installation

### Using Docker (Recommended)

1. Clone the repository
   ```
   git clone <repository-url>
   cd todo-app
   ```

2. Build and start the Docker containers
   ```
   docker-compose up -d --build
   ```

3. Access the application:
   - Frontend: http://localhost
   - Backend API: http://localhost:8000/api/todos/
   - Admin interface: http://localhost:8000/admin/

4. To stop the containers
   ```
   docker-compose down
   ```

### Manual Setup (Alternative)

#### Backend Setup
1. Clone the repository
   ```
   git clone <repository-url>
   cd todo
   ```

2. Create and activate a virtual environment (recommended)
   ```
   python -m venv venv
   source venv/bin/activate  # On Windows, use: venv\Scripts\activate
   ```

3. Install backend dependencies
   ```
   pip install django djangorestframework django-cors-headers
   ```

4. Run migrations
   ```
   python manage.py migrate
   ```

5. Start the Django development server
   ```
   python manage.py runserver
   ```

6. The backend API will be available at http://localhost:8000

#### Frontend Setup
1. Navigate to the frontend directory
   ```
   cd todo/frontend
   ```

2. Install frontend dependencies
   ```
   npm install
   ```

3. Start the React development server
   ```
   npm start
   ```

4. The frontend will be available at http://localhost:3000

## API Endpoints

- `GET /api/todos/` - List all todos
- `POST /api/todos/` - Create a new todo
- `GET /api/todos/:id/` - Get a specific todo
- `PUT /api/todos/:id/` - Update a specific todo
- `DELETE /api/todos/:id/` - Delete a specific todo

## Docker Deployment

The application is containerized using Docker and can be easily deployed:

1. Make sure Docker and Docker Compose are installed on your system
2. Clone the repository and navigate to the project root
3. Build and start the containers: `docker-compose up -d --build`
4. The application will be accessible at:
   - Frontend: http://localhost
   - Backend API: http://localhost:8000/api/todos/

The Docker setup includes:
- A container for the Django backend
- A container for the React frontend, served via Nginx
- Proper networking between the containers
- Volume mapping for persistent data

## Future Improvements

- User authentication and authorization
- Categories for todo items
- Due dates and reminders
- Deployment instructions for production environments
- Offline mode with local storage
- Kubernetes deployment configuration
- CI/CD pipeline setup