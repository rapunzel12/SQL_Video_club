# 📌 Database Overview

## 🎯 Purpose
This database models a **Video Club** where members borrow video tapes containing multiple movies.

## 🏗️ Tables in the Database:
1. **member** – Stores user details (ID, Name).
2. **movie** – Tracks movies (Title, Duration, otional Grade (1-10), Price, Genre).
3. **videotape** – Stores physical tapes with durations.
4. **borrowed** – Keeps rental history (for how many days the tape has been rented to a member).
5. **contains** – Connects video tapes to movies.
6. **genre** – Defines movie genres (Name of the Genre).

## 🔗 Relationships:
- **Each member** can borrow **multiple video tapes**.
- **Each videotape** may contain **multiple movies**.
- **Each movie** belongs to **one genre**.
- **Borrowed records** track which member rented which tape.

👉 See detailed ER diagrams in **[SQL_RESULTS.md](SQL_RESULTS.md)**.

