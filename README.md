#Linux System Monitor
Overview
A Linux monitoring project that collects and logs basic system health information.

Features
CPU Information
Memory Usage
Disk Usage
Uptime Information
Top Memory Consuming Processes
Repository Structure
linux-system-monitor/ ├── README.md ├── .gitignore ├── scripts/ │ └── system_health.sh └── logs/

GitHub Best Practices
Branch-Based Development
Create feature branches instead of directly modifying main.

Pull Requests
Use Pull Requests for reviewing and merging changes.

Code Reviews
Review code before merging to ensure quality.

Security
Do not store credentials or sensitive data in repositories.

Execution Steps
chmod +x scripts/system_health.sh
cd scripts
./system_health.sh
