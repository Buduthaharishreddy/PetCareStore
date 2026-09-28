# PetCareStore

## Day 1 – Pet Care Management System

### 1. Project Setup
- Created the `PetCareStore` web application.
- Created `index.jsp` as the home page.
- Added **Login** and **Register** links on `index.jsp`.

### 2. Database Connection
- Created `db.jsp`.
- Configured the **MySQL database connection using JDBC**.
- Added the MySQL Connector/J library.

### 3. User Registration
- Created `register.jsp` for the registration form.
- Created `register1.jsp` to process and store user registration details.
- Connected the registration process with MySQL.

### 4. User Login
- Created `login.jsp` for user login.
- Created `verify.jsp` to verify the entered username/email and password.
- Implemented login validation.

### 5. User Page
- Created `userPage.jsp`.
- Displayed the logged-in user's available options.
- Added navigation to pet-related operations.

### 6. Pet Management – CRUD
- Created `addpet.jsp` and `addpet1.jsp` → **Add Pet**
- Created `viewpet.jsp` → **View Pet**
- Created `updatepet.jsp` and `updatepet1.jsp` → **Update Pet**
- Created `deletepet.jsp` and `deletepet1.jsp` → **Delete Pet**

### Overall Day 1 Flow

```
index.jsp
    ↓
Login / Register
    ↓
Register → register.jsp → register1.jsp → MySQL
    ↓
Login → login.jsp → verify.jsp
    ↓
userPage.jsp
    ↓
Pet Management
    ├── Add Pet
    ├── View Pet
    ├── Update Pet
    └── Delete Pet
    ↓
MySQL
```

### Short Summary
On Day 1, I set up the basic Pet Care Management web application. I created the home page with login and registration, implemented user registration and login verification using JSP, JDBC and MySQL, and developed the Pet Management module with add, view, update and delete operations.
