# Laravel Blog Project

## Project Description

The **Laravel Blog** project is a blogging application built using the **Laravel** framework. It integrates the **Clean Blog** theme for the front-end and the **SB Admin 2** control panel for administration, along with the rich text editor **TinyMCE** for content management.

The project aims to provide a simple and extensible platform for managing posts with a clear separation between the user interface and the control panel.

---

## Technologies Used

* **Backend:** Laravel 12 (PHP)
* **Frontend:** HTML, CSS, Bootstrap
* **Admin Dashboard:** SB Admin 2
* **Text Editor:** TinyMCE
* **Database:** MySQL (or any Laravel-supported database)
* **Containerization:** Docker & Docker Compose

---

## How to Build and Run with Docker

### 1️⃣ Requirements

* Docker
* Docker Compose

### 2️⃣ Cloning the Project

```bash
`git clone https://github.com/username/repo-name.git
```
`` repo-name
```

### Setting Up the Environment File

```bash
`cp .env.example .env
```

> Ensure the database settings are configured In the `.env` file to match Docker settings.

### Building and Running Containers

```bash
docker compose build
docker compose up -d
```

### Setting Up Laravel Inside a Container

```bash
docker compose exec app php artisan key:generate
docker compose exec app php artisan migrate
```

---

## Stopping and Cleaning Containers

### Stopping Containers

```bash
docker compose down
```

### Stopping Containers and Deleting Volumes

```bash
docker compose down -v
```

---

## Notes on Settings

* **Default Port:**

* Application typically runs on: `http://localhost:8000`

* **Important Environment Variables:**

* `APP_PORT`

* `DB_HOST`

* `DB_PORT`

* `DB_DATABASE`

* `DB_USERNAME`

* `DB_PASSWORD`

> These values ​​can be modified from the `.env` file depending on the operating environment.

---

## How to Test the Project

### Front End

* Open your browser and go to:

```

http://localhost:8000

```

### Admin Dashboard

* Go to:

```

http://localhost:8000/admin

```

* Log in using your user credentials or create a new user via Seeder or Tinker.

---

## Attribution

* **Clean Blog Theme** – Start Bootstrap

* **SB Admin 2** – Start Bootstrap

* **TinyMCE** – Rich Text Editor

* **Laravel Framework** – Taylor Otwell

---
