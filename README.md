LIVE DEMO - https://aibtsjava-production.up.railway.app

🧠 KN AIBTS – Asset Intelligence & Trust System

KN AIBTS (Asset Intelligence & Trust System) is a full-stack Java web application designed to manage institutional assets with behavior-based trust scoring, silent depreciation, audit logging, and DNA-style asset evolution tracking.

This system goes beyond traditional asset management by analyzing how assets are used, not just how long they exist.

🚀 Key Features
🔐 Authentication & Roles

Secure login system

Role-based access:

ADMIN – Full control

USER – Asset usage logging

AUDITOR – Read-only audits

Disabled users are automatically blocked

📦 Asset Management

Asset creation & categorization

Assignment to users

Asset lifecycle states:

ACTIVE

LOCKED

RETIRED

🛡 Trust Score Engine

Dynamic trust score per asset

Calculated using:

Usage hours

Idle hours

Misuse events

Depreciation impact

Auto-locking assets when trust drops below safety threshold

📉 Silent Depreciation Engine

Value degradation based on real usage behavior

Weighted factors:

Usage load

Idle time

Misuse frequency

Fully automatic and cumulative

🧬 Asset DNA System (Unique Feature)

Immutable DNA hash generated for every asset event

DNA evolves on:

Usage logging

Misuse

Depreciation recalculation

Trust changes

Includes:

DNA Timeline Dashboard

DNA Diff Analyzer (mutation detection)

📜 Audit & Compliance

Every critical action logged:

Asset locking

User disable/enable

Depreciation recalculation

Administrative decisions

Immutable audit trail

🏗 Tech Stack
Backend

Java (JSP / Servlet)

JDBC

Apache Tomcat 10+

Frontend

JSP + HTML5

CSS (Glassmorphism UI)

Responsive layout

Database

MySQL 8+

Relational integrity with foreign keys

Build Tool

Maven (WAR packaging)

📁 Project Structure
AIBITS/
├── src/
│   └── main/
│       ├── java/
│       └── webapp/
│           ├── *.jsp
│           ├── css/
│           └── assets/
├── db.jsp
├── pom.xml
├── README.md
└── target/
    └── AIBITS.war

🛠 Database Setup
1️⃣ Create Database
CREATE DATABASE aibts;

2️⃣ Create Application User
CREATE USER 'aibts_user'@'localhost'
IDENTIFIED WITH mysql_native_password
BY 'Aibts@123';

GRANT ALL PRIVILEGES ON aibts.* TO 'aibts_user'@'localhost';
FLUSH PRIVILEGES;

🔌 Database Connection (db.jsp)
<%@ page import="java.sql.*" %>
<%
Connection conn = null;
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/aibts?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC",
        "aibts_user",
        "Aibts@123"
    );
} catch(Exception e) {
    out.println("Database Connection Failed: " + e.getMessage());
}
%>

▶️ Running the Project Locally
Prerequisites

Java JDK 17+

Apache Tomcat 10+

MySQL 8+

NetBeans IDE

Steps

Clone the repository

git clone https://github.com/Kavinesan2004/AIBTS.git


Open in NetBeans

Configure Tomcat server

Build project

mvn clean package


Deploy WAR to Tomcat

Access:

http://localhost:8080/AIBITS/

👤 Default Roles
Role	Access
ADMIN	Full system control
USER	Log asset usage
AUDITOR	View audits & reports
🔐 Security Notes

Root DB user is not used

Disabled users are auto-blocked

Role enforcement on every page

Ready for password hashing upgrade

🌍 Deployment Notes

GitHub Pages ❌ (JSP not supported)

Supported platforms:

Render (Docker / WAR)

Railway

VPS (Tomcat + MySQL)

Local / Institutional Server

📈 Future Enhancements

Password hashing (BCrypt)

REST API version

Asset predictive failure AI

Charts & analytics dashboard

Email alerts for critical trust drops

👨‍💻 Author

Kavinesan
Full-Stack Java Developer
📍 India

GitHub: https://github.com/Kavinesan2004

⭐ License

This project is for educational and institutional use.
Commercial use requires permission.

