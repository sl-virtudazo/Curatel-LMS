<h2 align="justify">📚 Curatel: Library Management System</h2>

A comprehensive graphical user interface application (GUI) designed for efficient library operations and resource management.

<div align="justify">
<br>
  
**🎯 What Curatel Does**

Curatel is a desktop library management system designed to modernize and simplify traditional library operations through a user-friendly graphical interface. It offers tools for managing book catalogs, tracking members, monitoring circulation, and generating reports, all centralized within a secure MySQL database for accurate and consistent data management. The system integrates five core components—secure login, catalog management, patron database, circulation tracking, and reporting dashboard—that automate routine tasks and streamline library workflows. By digitizing record-keeping, Curatel reduces errors, improves efficiency, and ensures real-time updates across all modules. Built with Python and PyQt6, it provides an intuitive experience that requires minimal training, making it suitable for academic, public, and institutional libraries seeking to modernize operations.

<br>

**💡 Why Curatel Is Useful**

Curatel is a powerful library automation system designed to simplify and optimize daily library operations. By centralizing book, member, and transaction data, it eliminates manual record-keeping and enables real-time tracking of borrowed items, due dates, and overdue fines. The software also generates instant analytical reports, helping administrators make data-driven decisions to improve services and resource allocation. Automation reduces repetitive tasks, allowing library staff to focus on strategic initiatives, patron support, and community engagement. Additionally, Curatel provides educational value for students and developers by showcasing object-oriented design, modular architecture, and seamless integration between user interfaces and backend systems.

<br>

**🛠️ How to Get Started**

_Prerequisites_

Before running Curatel, ensure your system meets these requirements:

- Python 3.8 or higher installed on your machine
- MySQL Server 8.0 or higher for database management
- PyQt6 framework for the graphical user interface
- mysql-connector-python library for database connectivity
- Minimum 4GB RAM and 500MB available disk space

_Installation Steps_

Follow these instructions to set up Curatel on your local machine:

1. Clone the Repository
```
bash

git clone https://github.com/yourusername/Curatel-LMS.git
cd Curatel-LMS
```

2. Install Required Dependencies

```
bash

pip install -r requirements.txt

The requirements file includes essential packages:

PyQt6>=6.0.0
mysql-connector-python>=8.0.0
Pillow>=9.0.0
```

3. Configure the Database

Import the provided SQL schema into your MySQL server. Open MySQL Workbench or command-line interface and execute:
```
bash

mysql -u root -p < database/db_library.sql
```
This command creates the db_library database with pre-configured tables for books, members, librarians, and borrowed transactions.

4. Update Database Credentials

Navigate to curatel_lms/config.py and modify the database connection parameters according to your MySQL configuration:
```
python

DB_CONFIG = {
    'host': 'localhost',
    'user': 'your_mysql_username',
    'password': 'your_mysql_password',
    'database': 'db_library'
}
```

5. Launch the Application
```
bash

python main_system.py

📁 Project Structure
curatel_lms/
│
├── assets/                              # Images, icons, and visual resources
│   ├── catalog_logo.png
│   ├── circulation_logo.png
│   ├── curatel_bg.png
│   ├── eye_closed.png
│   ├── eye_open.png
│   ├── logout_logo.png
│   ├── patron_logo.png
│   └── reports_logo.png
│
├── fonts/                               # Custom typography files
│   ├── Montserrat-Regular.ttf
│   ├── Montserrat-Bold.ttf
│   ├── PlayfairDisplay-Regular.ttf
│   └── PlayfairDisplay-Bold.ttf
│
├── ui/                                  # User interface modules
│   ├── __pycache__/                     # Python cache files
│   ├── __init__.py
│   ├── catalog_dialogs.py
│   ├── catalog_management.py
│   ├── circulation_dialogs.py
│   ├── circulation_management.py
│   ├── library_reports.py
│   ├── login_screen.py
│   ├── patron_dialogs.py
│   ├── patron_management.py
│   └── window.py
│
├── config.py                            # Configuration and constants
├── database.py                          # Database connection manager
└── main.py                              # Application entry point
```

<br>

**🖥️ System Requirements**

_Hardware Specifications_
- Processor: Intel Core i3 or equivalent AMD processor
- Memory: 4GB RAM minimum (8GB recommended for optimal performance)
- Storage: 500MB available hard disk space for installation
- Display: 1366x768 screen resolution minimum (1920x1080 recommended)

_Software Requirements_
- Operating System: Windows 10/11, macOS 10.14+, or Linux Ubuntu 20.04+
- Python Runtime: Version 3.8 or higher with pip package manager
- Database Server: MySQL 8.0 or higher with administrative privileges
- Network: Internet connection required for initial dependency installation

<br>

**❓ Getting Help**

_Common Issues and Solutions_

- Database Connection Failures: Verify MySQL server is running and accessible. Confirm database credentials in config.py match your MySQL setup. Check firewall settings allow connections to MySQL port (default 3306). Ensure db_library database exists by reviewing MySQL databases list.
- Module Import Errors: Confirm all dependencies are installed by running pip install -r requirements.txt. Verify Python version meets minimum requirement of 3.8 or higher. Check virtual environment is activated if using isolated Python environments.
- Login Problems: Use default credentials provided in documentation for initial access. Reset admin password by executing password update queries directly in MySQL. Verify librarians table contains at least one valid user record.
- Display or Layout Issues: Ensure screen resolution meets minimum 1366x768 requirement. Update graphics drivers to latest versions from manufacturer. Verify PyQt6 is properly installed without version conflicts.

<br>

**👨‍💻 Who Maintains the Project**

_Project Maintainer_
- Samantha Virtudazo developed Curatel as part of her Software Fundamentals and Development coursework at the Computer Science program. The project demonstrates practical application of database design principles, object oriented programming concepts, and user interface development techniques learned throughout her academic journey.

_Acknowledgments_
- This project was completed under the guidance of Mary Iana Bennel Buisan and incorporates best practices from established library management systems. Special recognition goes to the open-source community for providing excellent documentation on PyQt6, MySQL integration, and Python development patterns that informed the system architecture.

_Contributing Guidelines_
- Contributions to Curatel are welcome through standard GitHub workflows. Interested developers should fork the repository, create feature branches for proposed changes, write clear commit messages following conventional commit standards, include unit tests for new functionality where applicable, update documentation to reflect code changes, and submit pull requests with detailed descriptions of modifications. All contributions must maintain code quality standards including PEP 8 style guidelines, comprehensive error handling, inline documentation for complex logic, and consistent naming conventions across modules. Contributors agree that submissions will adopt the project's existing license terms.

<br>

**📄 License**

This project is distributed under the MIT License, which permits free use, modification, and distribution of the software with proper attribution. Commercial and non-commercial applications are permitted. The software is provided without warranty of any kind, and the authors assume no liability for damages resulting from its use. For complete license terms, refer to the LICENSE file in the project repository.

<br>

**🔮 Future Enhancements**

The following features are planned for future releases:
- Multi-user Authentication: Implement role-based access control with distinct permissions for administrators, librarians, and staff members.
- Barcode Scanning Integration: Add hardware support for USB barcode scanners to expedite book identification during checkout and return processes.
- Email Notifications: Automated email reminders for upcoming due dates, overdue notices, and availability alerts for reserved materials.
- Mobile Companion App: Cross-platform mobile application allowing patrons to search catalogs, view borrowing history, and request materials remotely.
- Advanced Analytics: Enhanced reporting with visualization charts, predictive borrowing trends, and collection utilization metrics.
- Cloud Synchronization: Optional cloud backup and multi-branch synchronization for library systems with multiple locations.

Community feedback and contributor suggestions are valuable for prioritizing future development efforts.

<br>

**📞 Contact Information**

For inquiries regarding Curatel implementation, customization, or academic collaboration:
- Developer: Samantha Lewis Alfeche Virtudazo
- Institution: Computer Science Department, Academic Year 2025
- Project Supervisor: Mary Iana Bennel Buisan
- Repository: GitHub - Curatel Library Management System
