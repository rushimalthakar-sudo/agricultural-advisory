Agricultural Advisory REST API

Project Overview

The Agricultural Advisory REST API is a Spring Boot application that manages crop information, fertilizer details, soil profiles, and fertilizer recommendations based on crop and soil composition.

Technologies Used

- Java 17
- Spring Boot
- Maven
- Spring Data JPA / Hibernate
- MySQL
- Flyway Database Migration
- HTML, CSS, JavaScript

Prerequisites

- Java JDK 17
- MySQL Server
- Maven (or use the included Maven Wrapper)
- Git (optional)

Database Configuration

1. Start your MySQL server.

2. Create a database named "agricultural_advisory".

3. Open "src/main/resources/application.properties".

4. Configure your MySQL URL, username, and password for your local environment.

5. Flyway applies the database migration from:
   
   "src/main/resources/db/migration/V1__create_agricultural_tables.sql"

Do not commit real database passwords to a public repository.

Note: This project currently uses MySQL. The submission instructions also request a PostgreSQL schema or dump, which is provided separately and must be verified if PostgreSQL compatibility is required.

How to Run the Backend

1. Open a terminal in the project root directory.

2. Run:
   
   .\mvnw.cmd spring-boot:run

3. Open "http://localhost:8080" in your browser.

Keep the terminal open while using the application.

How to Run Tests

Run:

.\mvnw.cmd test

How to Build the Project

Run:

.\mvnw.cmd clean package

Frontend

The frontend is located at:

"src/main/resources/static/index.html"

When the backend is running, open:

"http://localhost:8080"

The frontend is served by Spring Boot.

Frontend Features

- Create and view crop records.
- Create and view fertilizer records.
- Create and view soil profiles.
- Get fertilizer recommendations using crop and soil nutrient values.
- Display API responses and error messages.

API Endpoints

Crops

- "GET /api/crops" — List crops with pagination and sorting.
- "GET /api/crops/{id}" — Get a crop by ID.
- "POST /api/crops" — Create a crop.
- "PUT /api/crops/{id}" — Update a crop.
- "DELETE /api/crops/{id}" — Delete a crop.

Optional crop listing parameters include "page", "size", "sortBy", "direction", and "name".

Example:

"GET /api/crops?page=0&size=5&sortBy=name&direction=asc"

Fertilizers

- "GET /api/fertilizers" — List fertilizers.
- "GET /api/fertilizers/{id}" — Get a fertilizer by ID.
- "POST /api/fertilizers" — Create a fertilizer.
- "PUT /api/fertilizers/{id}" — Update a fertilizer.
- "DELETE /api/fertilizers/{id}" — Delete a fertilizer.

Soil Profiles

- "GET /api/soil-profiles" — List soil profiles.
- "GET /api/soil-profiles/{id}" — Get a soil profile by ID.
- "POST /api/soil-profiles" — Create a soil profile.
- "PUT /api/soil-profiles/{id}" — Update a soil profile.
- "DELETE /api/soil-profiles/{id}" — Delete a soil profile.

Fertilizer Recommendation

- "POST /recommend" — Get fertilizer recommendations using crop ID and soil composition.

Example request:

{
  "cropId": 1,
  "nitrogen": 20,
  "phosphorus": 10,
  "potassium": 15,
  "ph": 6.5
}

Database Schema

The MySQL migration file is located at:

"src/main/resources/db/migration/V1__create_agricultural_tables.sql"

The project also includes "postgresql_schema.sql" as a separate schema file. The running application currently uses MySQL; PostgreSQL compatibility has not been verified.

Testing Status

The application has been tested locally for the following operations:

- Creating and viewing crops.
- Creating and viewing fertilizers.
- Creating and viewing soil profiles.
- Generating fertilizer recommendations.
- Running the Maven build and tests.

Notes

- Ensure the database credentials are configured correctly before starting the application.
- The backend and frontend run together through Spring Boot.
- Test the APIs after starting the application.
- Never commit database passwords or other secrets to a public repository.

Submission Note

This project contains a Spring Boot backend, a web frontend, MySQL database migrations, and a separate PostgreSQL schema file. Review the assignment requirements before submission to confirm whether a PostgreSQL-compatible implementation or database dump is also required.