# Vehicle Servicing Database (SQL)

A relational database design and implementation for a vehicle servicing business. It tracks customers, their cars, appointments, services, parts and tools used, staff and departments, payments (including instalment plans), and customer feedback.

Group coursework developed for University of Portsmouth, 2025.

## Contents

| File | Description |
|------|-------------|
| `group_12_cw2.sql` | Creates all tables, inserts sample data and adds indexes |
| `group_12_cw2.pdf` | Written report: final ERD, data dictionary, reflective analysis and group contribution records |

## Database Overview

The database has **16 tables** and **9 indexes**, with sample data in every table.

| Area | Tables |
|------|--------|
| People | `CUSTOMER`, `STAFF`, `DEPARTMENT`, `STAFF_DEPARTMENT` |
| Vehicles | `CARS` |
| Work done | `SERVICES`, `APPOINTMENT`, `SERVICE_APPOINTMENT` |
| Inventory | `PARTS`, `PARTS_USED`, `TOOLS`, `TOOLS_USED` |
| Payments | `PAYMENT`, `INSTALLMENT` |
| Feedback | `CUSTOMER_FEEDBACK_REF`, `CUST_STAFF_FEED_COMMUNICATION` |


### Key design points

- **Appointments** link a customer, a staff member, a car and a service
- **`SERVICE_APPOINTMENT`** is an intersection table that resolves the many-to-many relationship between services and appointments, and also stores details and issues for each service
- **`PARTS_USED` and `TOOLS_USED`** record what was used in each appointment, with quantities and dates
- **Payments** support either full upfront payment or a percentage-based instalment plan, with each instalment recorded separately
- **Customer feedback** can be followed up through a communication log between customers and staff
- **Constraints** keep data valid, for example `UNIQUE` on emails, phone numbers, licence plates and VINs, and `CHECK` constraints preventing negative stock or costs, or an instalment end date before its start date
- **Indexes** cover frequently queried columns such as names, emails, phone numbers, appointment status and date, part and tool stock, and payment status

## Getting Started

### Prerequisites

- [PostgreSQL](https://www.postgresql.org/download/) (the schema uses `SERIAL`)

### Setup

1. Clone the repository:
```bash
   git clone https://github.com/Finn-Cullen/2024-Database-Systems-Development-Coursework.git
   cd 2024-Database-Systems-Development-Coursework
```
2. Create a database:
```bash
   createdb garage_db
```
3. Load the schema and sample data:
```bash
   psql -d garage_db -f group_12_cw2.sql
```

The script doesn't drop existing tables, so run it on an empty database. To start again, drop and recreate the database.

### Example Queries

Appointments with the customer and service:

```sql
SELECT a.Appo_ID, a.Appo_date, a.Appo_time,
       c.Cust_first_name, c.Cust_last_name, s.Serv_name
FROM APPOINTMENT a
JOIN CUSTOMER c ON a.Cust_ID = c.Cust_ID
JOIN SERVICES s ON a.Serv_ID = s.Serv_ID
ORDER BY a.Appo_date, a.Appo_time;
```

Parts used in each appointment:

```sql
SELECT pu.Appo_ID, p.parts_name, pu.Quantity, pu.Date_used
FROM PARTS_USED pu
JOIN PARTS p ON pu.parts_ID = p.parts_ID
ORDER BY pu.Appo_ID;
```

## Design Decisions

Our final design combined a group member's initial ERD with ideas from the other two, plus feedback on the first coursework. The main changes were:

- Added `TOOLS` and `TOOLS_USED` to track equipment used in servicing
- Added a `Staff_ID` foreign key to the customer/staff communication table
- Replaced `SERVICE_REPORT` with the `SERVICE_APPOINTMENT` intersection table
- Added indexes on frequently queried columns
- Tightened data types and checks, such as shortening `Appo_Status` to `VARCHAR(9)`, preventing a 0-star rating, and removing unnecessary keys

The full reasoning is in the reflective analysis section of the PDF.

## Technologies Used

- SQL (PostgreSQL)
- Lucidchart-style ERD for design [edit if you used something else]
- [Mockaroo](https://www.mockaroo.com/) for generating bulk sample data (the rest was written by hand)

## Known Limitations

- Sample data is fictional and partly randomly generated
- Communication log entries use placeholder text
- Only two payment plans are covered in the sample data: full upfront, or two 50% instalments

## Team

Group 12:

- **Finn Cullen**: [GitHub](https://github.com/Finn-Cullen)
- **Isaac Lawal**: #unknown as of now#
- **Ethan White**: #unknown as of now#

The ERD, data dictionary and reflective analysis were produced collaboratively. Finn Cullen led the SQL implementation.
