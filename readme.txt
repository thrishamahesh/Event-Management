🎉 Event Management System

A web-based Event Management System developed to simplify the planning, booking, and management of events. Built using PHP, MySQL, HTML/CSS, and Bootstrap, this platform offers an intuitive interface for administrators and users to manage events efficiently.

🚀 Features

- 📝 Event Creation: Admins can add, update, or delete events with details like venue, date, and capacity.
- 🎫 User Registration: Users can register and log in to book events.
- 📅 Booking System: Users can browse available events and book their slots.
- 📊 Admin Dashboard: Manage users, events, and view booking statistics.
- 💬 Contact Form: Simple contact form for queries or feedback.

🛠️ Tech Stack

| Frontend     | Backend    | Database | Others          |
|--------------|------------|----------|-----------------|
| HTML5, CSS3, Bootstrap | PHP 7+     | MySQL     | Apache, XAMPP/WAMP |

🔧 Setup Instructions: 
1. **Clone the repository**
   ```bash
   git clone https://github.com/thrishamahesh/Event-Management.git
Import the database

Open phpMyAdmin

Create a new database (e.g., event_db)

Import the provided .sql file located in the project directory (if available)

Configure the database

Open db.php and update the database credentials:

php
Copy
Edit
$con = mysqli_connect("localhost", "root", "", "event_db");
Run the project

Place the project folder inside your local server directory (htdocs for XAMPP).

Start Apache and MySQL.
Visit: http://localhost/Event-Management/

👤 Roles
Admin
-Add/edit/delete events
-View bookings and user list

User
-Register/login
-Book and manage event reservations
