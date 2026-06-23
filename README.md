# Smart Expense Tracker

A modern full-stack expense management application built with Spring Boot and MySQL, designed to help users track spending, visualize financial habits, and manage transactions securely through an intuitive dashboard.

## 🛠️ Tech Stack

### Backend

* Java 17
* Spring Boot
* Spring MVC
* Spring Security
* Spring Data JPA
* Hibernate

## Screenshots

<img width="1880" height="1047" alt="Dashboard image" src="https://github.com/user-attachments/assets/f5633f69-ce6d-47a7-be21-9e92c95e5010" />

<img width="1918" height="1078" alt="login image" src="https://github.com/user-attachments/assets/674db7bd-df13-435a-a30e-f0c53307326f" />

<img width="1732" height="1002" alt="image" src="https://github.com/user-attachments/assets/a4a7d252-2670-4c27-acfa-b3b7213b8515" />

---

### Frontend

* HTML5
* CSS3
* JavaScript (ES6+)

### Database & Tools

* MySQL
* Git & GitHub

### Backend

* Springboot 

### Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/expense-tracker.git
cd expense-tracker
```

2. Configure the database in `application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/expense_tracker?createDatabaseIfNotExist=true
spring.datasource.username=YOUR_USERNAME
spring.datasource.password=YOUR_PASSWORD
```

3. Run the application:

```bash
./mvnw spring-boot:run
```

4. Open your browser:

```text
http://localhost:8080
```


## 🔐 Key Learning Outcomes

* Designing secure RESTful APIs with Spring Boot
* Implementing authentication and authorization using Spring Security
* Managing relational data using JPA and Hibernate
* Building responsive user interfaces with JavaScript
* Integrating data visualization for enhanced user experience
