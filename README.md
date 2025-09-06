# Little Lemon Restaurant - Django Web Application

A Django web application for the Little Lemon restaurant that allows customers to view the menu, make reservations, and learn about the restaurant.

## Features

- **Home Page**: Welcome page with special offers and restaurant information
- **Menu**: Display of restaurant menu items with descriptions and prices
- **Reservations**: Online booking system for table reservations
- **About**: Information about the restaurant and its story
- **Admin Panel**: Django admin interface for managing menu items and reservations

## Models

- **Menu**: Restaurant menu items with name, price, and description
- **Booking**: Customer reservations with guest information and comments

## Technology Stack

- **Backend**: Django 4.1.1 (development), Django 5.x (production)
- **Database**: SQLite3 (development), PostgreSQL Neon (production on Vercel)
- **Frontend**: HTML templates with CSS styling
- **Python Version**: 3.13
- **Logging**: [Loguru](https://github.com/Delgan/loguru) for advanced logging

## Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd littelelemon-django
```

2. Install dependencies using pipenv:
```bash
pipenv install
```

3. Activate the virtual environment:
```bash
pipenv shell
```



4. Set up your environment variables:
	 - Create a `.env` file in the project root with at least:
		 ```env
		 SECRET_KEY=your_secret_key
		 DEBUG=True
		 ALLOWED_HOSTS=.vercel.app,localhost,127.0.0.1
		 # For production on Vercel, add:
		 # DATABASE_URL=postgresql://user:password@host:port/dbname
		 ```

5. Run database migrations:
```bash
python manage.py migrate
```

5. Create a superuser (optional):
```bash
python manage.py createsuperuser
```

6. Start the development server:
```bash
python manage.py runserver
```



7. Open your browser and visit `http://127.0.0.1:8000/`


## Production on Vercel

- The deployment on Vercel uses an external PostgreSQL database (Neon). You must define the `DATABASE_URL` environment variable in your Vercel project settings with your Neon database URL.
- Advanced logging is handled by Loguru, allowing for better error and event tracking in production.

## Development

This project was created as part of a Django learning assessment and demonstrates basic Django concepts including:
- Models and database relationships
- Views and URL routing
- Templates and static files
- Forms and form handling
- Admin interface customization
- Advanced logging with Loguru