# Tripual - Relational Database System

Relational database system designed and implemented in MySQL to support **Tripual**, a fictional virtual travel cataloguing platform. This project covers the entire database development lifecycle, from requirements engineering and conceptual/logical modeling to physical deployment, performance optimization, and database programmability.

Developed as part of the **Bases de Dados (Database Systems)** course at the **University of Minho**.

---

## 🚀 Case Study Overview: "Tripual"

To guide the database design, we developed the business logic for "Tripual"—a conceptual social platform where users share and discover travel experiences. The database architecture was engineered to efficiently support and scale the following hypothetical platform features:

* **User & Profile Management:** Social networking mechanics, including user authentication, preferences, and followers/following graphs.
* **Content Cataloguing:** Structured logs for tracking countries, cities, points of interest, and custom itineraries.
* **Multimedia & Social Interactions:** Storage schema for user posts, media attachments, comments, reactions, and multilingual translations.
* **Gamification Engine:** Data structures to track points, milestones, and reward badges for active users.

---

## 🛠️ Tech Stack & Tools

* **Database Engine:** MySQL
* **Modeling Tools:** TerraER (Conceptual), MySQL Workbench (Logical & Physical)
* **Language:** SQL

---

## 📐 Architecture & Design Lifecycle

The development strictly followed modern database engineering methodologies:

1. **Requirements Analysis:** Gathering business rules and system constraints for a scalable social platform.
2. **Conceptual Modeling:** Designed a robust Entity-Relationship (E-R) diagram.
3. **Logical Design:** Relational mapping, handling complex inheritance (e.g., different types of multimedia posts), and strict normalization up to 3NF/BCNF to minimize redundancy.
4. **Physical Implementation:** Schema building with highly tailored data types, foreign keys, and cascading constraints.

---

## 🧠 Database Programmability & Advanced Features

To ensure maximum performance, data integrity, and encapsulate business logic within the database layer, the following components were implemented:

### 1. Stored Procedures
Automates complex, multi-table transactions directly on the server side.
* `CreateUserPost`: Streamlines the process of publishing a travel review, linking media attachments and updating timestamps simultaneously.

### 2. User-Defined Functions (UDFs)
Encapsulates calculation algorithms for frequent application queries.
* `CountUserContributions`: Computes total interactions (posts, comments, reviews) by a single user to dynamically assess their engagement level.

### 3. Triggers (The Gamification Engine)
Enforces business rules automatically upon data mutation.
* `RewardPointsOnPost`: A post-insert trigger that monitors new reviews and automatically rewards users with trip points, instantly evaluating if they qualify for a new milestone badge.

### 4. Database Optimization & Security
* **Indexes:** Strategic indexes created on foreign keys and frequently queried columns (like user searches or location filters) to optimize query execution time.
* **Views:** Implemented security and abstraction views to hide complex multi-table joins from backend developers and restrict sensitive user data access.
* **User Roles:** Distinct database roles and privileges (Admin vs. Standard Application Connection) ensuring adherence to the principle of least privilege.

*Course Project for Bases de Dados - Universidade do Minho.*
