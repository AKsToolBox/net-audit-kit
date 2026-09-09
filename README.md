# Network Diagnostics & Auditing Toolkit (`net-audit-kit`)

A collection of lightweight Bash scripts designed for system administrators and network engineers to quickly verify port connectivity, audit socket statuses, and log network latency.

---

## 🛠 Included Utilities

### 1. TCP Port Checker (`port_check.sh`)
A utility script that iterates through standard network ports (SSH, HTTP, HTTPS, MySQL, etc.) on a target host using Bash TCP sockets to verify if services are actively listening and reachable.

### 2. Network Latency Logger (`ping_log.sh`)
A diagnostic script that pings an external target, tracks packet success/failure, and appends timestamped response metrics to a persistent log file for quick network stability reviews.

---

## 🚀 Usage

### Execution Examples
To check port accessibility on a target host (defaults to `127.0.0.1`):
```bash
bash port_check.sh 192.168.1.10
