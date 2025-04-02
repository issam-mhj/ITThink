<div align="center">

<h3 align="center">ITThink</h3>

  <p align="center">
    A platform connecting freelancers with projects.
    <br />
     <a href="https://github.com/issam-mhj/itthink">github.com/issam-mhj/itthink</a>
  </p>
</div>

## Table of Contents

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#key-features">Key Features</a></li>
      </ul>
    </li>
    <li><a href="#architecture">Architecture</a></li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

## About The Project

ITThink is a platform designed to connect freelancers with clients who have projects to be completed. The database schema includes tables for users, freelancers, projects, categories, subcategories, offers, and testimonials. This structure facilitates the management of user accounts, freelancer profiles, project listings, and the bidding process.

### Key Features

- **User Management:** Stores user information including name, password, and email.
- **Freelancer Profiles:** Manages freelancer data, including skills and associated user ID.
- **Project Listings:** Stores project details such as title, description, category, subcategory, user ID, and creation date.
- **Offer Management:** Tracks offers made by freelancers on projects, including the amount, deadline, freelancer ID, and project ID.
- **Categorization:** Organizes projects into categories and subcategories.
- **Testimonials:** Allows users to provide feedback and testimonials.
The project uses a MySQL database to store information about users, freelancers, projects, offers, categories, subcategories, and testimonials. The database schema is defined in the `localhost.sql` file.

## Getting Started

### Prerequisites

- MySQL Server
- PHP (for running phpMyAdmin if needed)

### Installation

Instructions for setting up the database:

1.  **Create the `itthink` database:**

    ```sql
    CREATE DATABASE IF NOT EXISTS `itthink` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
    USE `itthink`;
    ```

2.  **Import the `localhost.sql` file:**

    You can import the `localhost.sql` file using phpMyAdmin or the MySQL command-line tool.

    **Using phpMyAdmin:**

    *   Open phpMyAdmin in your browser.
    *   Select the `itthink` database.
    *   Click on the "Import" tab.
    *   Choose the `localhost.sql` file and click "Go".

    **Using the MySQL command-line tool:**

    ```bash
    mysql -u <username> -p < itthink.sql
    ```

    Replace `<username>` with your MySQL username. You will be prompted for your password.  Also, ensure you are running this command from the directory containing `localhost.sql`.
