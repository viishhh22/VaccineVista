# VaccineVista: Lumpy Vaccination Booking System for Animals

## Introduction

VaccineVista is a Java and MySQL-based web application designed to manage the booking of lumpy vaccinations for animals. The system includes three dashboards: User, Admin, and Hospital. Each dashboard provides specific functionalities tailored to the needs of the respective users.

## Features

### User Dashboard
- **User Registration and Login**: Users can register and log in to the system.
- **Book Vaccination Slots**: Users can book vaccination slots for their animals.
- **View Booking History**: Users can view the history of their bookings.
- **Update Profile**: Users can update their profile information.

### Admin Dashboard
- **Admin Login**: Admins can log in to manage the system.
- **Manage Users**: Admins can view, add, edit, and delete user accounts.
- **Manage Hospitals**: Admins can view, add, edit, and delete hospital records.
- **View Reports**: Admins can view reports on vaccination bookings and system usage.

### Hospital Dashboard
- **Hospital Login**: Hospitals can log in to manage their vaccination slots.
- **Manage Vaccination Slots**: Hospitals can add, edit, and delete vaccination slots.
- **View Bookings**: Hospitals can view bookings made by users.
- **Update Profile**: Hospitals can update their profile information.

## Technology Stack

- **Backend**: Java, Servlet, JSP
- **Frontend**: HTML, CSS, JavaScript
- **Database**: MySQL
- **Server**: Apache Tomcat

## Setup Instructions

### Prerequisites

- Java Development Kit (JDK) 8 or higher
- Apache Tomcat 9 or higher
- MySQL 5.7 or higher
- IDE (Eclipse, IntelliJ IDEA, NetBeans, etc.)

### Application Setup

1. Clone the repository:

```sh
git clone https://github.com/yourusername/vaccinevista.git
```

2. Open the project in your IDE.

3. Configure the database connection in `src/main/resources/db.properties`:

```properties
db.url=jdbc:mysql://localhost:3306/lumpy_vaccination
db.username=root
db.password=yourpassword
```

4. Deploy the project to Apache Tomcat.

5. Start the Tomcat server and access the application at `http://localhost:8080/vaccinevista`.

## Usage

### User Dashboard

1. Register as a new user.
2. Log in using your credentials.
3. Book a vaccination slot for your animal.
4. View your booking history.
5. Update your profile information if needed.

### Admin Dashboard

1. Log in using admin credentials.
2. Manage user accounts (view, add, edit, delete).
3. Manage hospital records (view, add, edit, delete).
4. View reports on vaccination bookings and system usage.

### Hospital Dashboard

1. Log in using hospital credentials.
2. Manage vaccination slots (add, edit, delete).
3. View bookings made by users.
4. Update hospital profile information.
---

We hope this project aids in the efficient management of lumpy vaccinations for animals, ensuring a healthier and safer environment. Thank you for using VaccineVista!
