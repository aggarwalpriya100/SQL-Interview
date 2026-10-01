# 🚀 SQL Interview Preparation — Day 1

## Day 1 Goal

Today we'll master the **basic filtering patterns**.

### Today's patterns

1. `SELECT + FROM`
2. `WHERE`
3. Comparison operators
4. `AND`
5. `OR`
6. `ORDER BY`
7. `LIMIT`

And we'll connect them to **basic → interview → LeetCode** questions.

---

# 🟢 Pattern 1 — SELECT + FROM

### 🧠 Pattern

```sql
SELECT columns
FROM table;
```

### 🎯 When to use it

Whenever the question says:

* "Find..."
* "Show..."
* "Return..."
* "Display..."

and simply asks you to retrieve data.

### 💻 Basic Practice

Suppose:

`employees`

| id | name  | salary |
| -: | ----- | -----: |
|  1 | Rahul |  40000 |
|  2 | Priya |  50000 |
|  3 | Aman  |  35000 |

**Question:** Display all employees.

Think:

> I need all columns → `*`

```sql
SELECT *
FROM employees;
```

### 🎯 Interview Question

**Find only employee names and salaries.**

Pattern:

```sql
SELECT ______, ______
FROM employees;
```

Answer:

```sql
SELECT name, salary
FROM employees;
```

### 🔥 LeetCode

**1757 — Recyclable and Low Fat Products**

The question asks for `product_id`.

Pattern:

```sql
SELECT product_id
FROM Products;
```

But we need filtering too, which leads to our next pattern.

---

# 🟢 Pattern 2 — WHERE

### 🧠 Pattern

```sql
SELECT columns
FROM table
WHERE condition;
```

### 🎯 When to use it

Whenever the question contains:

> "where..."
> "whose..."
> "having a value greater than..."
> "only customers with..."

You're **filtering rows**.

### 💻 Basic Practice

**Find employees whose salary is greater than 40,000.**

```sql
SELECT *
FROM employees
WHERE salary > 40000;
```

---

### 🎯 Interview Question

**Find employees whose age is greater than 25.**

```sql
SELECT *
FROM employees
WHERE age > 25;
```

---

### 🔥 LeetCode

**595 — Big Countries**

Pattern:

> Find countries where area is large **OR** population is large.

This introduces our next pattern.

---

# 🟢 Pattern 3 — Comparison Operators

### 🧠 Pattern

```text
=      equal
!=     not equal
>      greater
<      smaller
>=     greater/equal
<=     smaller/equal
```

### 🎯 When to use it

Whenever the question gives a numerical or exact comparison.

### 💻 Basic Practice

**Find employees with salary ≥ 50,000.**

```sql
SELECT *
FROM employees
WHERE salary >= 50000;
```

### 🎯 Interview Question

**Find employees whose salary is between two conditions using operators.**

Example:

> Salary ≥ 30,000 and salary ≤ 60,000.

```sql
SELECT *
FROM employees
WHERE salary >= 30000
AND salary <= 60000;
```

Later we'll learn the shorter `BETWEEN` version.

---

# 🟢 Pattern 4 — AND

### 🧠 Pattern

```sql
WHERE condition1
AND condition2;
```

### 🎯 When to use it

When **both conditions must be true**.

Think:

> **AND = both**

### 💻 Basic Practice

Find employees:

> salary > 40,000
> AND age < 30

```sql
SELECT *
FROM employees
WHERE salary > 40000
AND age < 30;
```

### 🎯 Interview Question

**Find employees from Delhi whose salary is greater than ₹50,000.**

```sql
SELECT *
FROM employees
WHERE city = 'Delhi'
AND salary > 50000;
```

### 🔥 LeetCode

**1757 — Recyclable and Low Fat Products**

Pattern:

```sql
SELECT product_id
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y';
```

✅ **LeetCode 1757 — Completed**

---

# 🟢 Pattern 5 — OR

### 🧠 Pattern

```sql
WHERE condition1
OR condition2;
```

### 🎯 When to use it

When **at least one condition** can be true.

Think:

> **OR = either one**

### 💻 Basic Practice

Find employees from Delhi OR Mumbai.

```sql
SELECT *
FROM employees
WHERE city = 'Delhi'
OR city = 'Mumbai';
```

### 🎯 Interview Question

Find employees whose salary is:

> greater than 70,000 **OR** age is less than 25.

```sql
SELECT *
FROM employees
WHERE salary > 70000
OR age < 25;
```

### 🔥 LeetCode

**595 — Big Countries**

Pattern:

```sql
WHERE area >= 3000000
OR population >= 25000000
```

You already solved this. ✅

---

# 🟢 Pattern 6 — ORDER BY

### 🧠 Pattern

```sql
ORDER BY column ASC;
```

or

```sql
ORDER BY column DESC;
```

### 🎯 When to use it

When the question says:

* highest
* lowest
* ascending
* descending
* oldest
* youngest
* largest
* smallest

### 💻 Basic Practice

**Sort employees by salary from highest to lowest.**

```sql
SELECT *
FROM employees
ORDER BY salary DESC;
```

### 🎯 Interview Question

**Find employees ordered from youngest to oldest.**

```sql
SELECT *
FROM employees
ORDER BY age ASC;
```

### 🧠 Remember

```text
ASC  → low → high
DESC → high → low
```

---

# 🟢 Pattern 7 — LIMIT

### 🧠 Pattern

```sql
ORDER BY column DESC
LIMIT N;
```

### 🎯 When to use it

When the question says:

* top 1
* top 2
* top 5
* highest 3
* lowest 3

### 💻 Basic Practice

**Find the 2 highest-paid employees.**

```sql
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 2;
```

### 🎯 Interview Question

**Find the 3 lowest-paid employees.**

```sql
SELECT *
FROM employees
ORDER BY salary ASC
LIMIT 3;
```

---

# 🔥 Day 1 Combined Pattern

This is the most important thing today.

When a question says:

> Find employees from Delhi whose salary is greater than ₹40,000 and show the highest-paid employees first.

Your brain should automatically recognize:

```text
SELECT
   ↓
FROM
   ↓
WHERE
   ↓
AND
   ↓
ORDER BY
   ↓
LIMIT (if required)
```

Example:

```sql
SELECT *
FROM employees
WHERE city = 'Delhi'
AND salary > 40000
ORDER BY salary DESC
LIMIT 3;
```

---

# 🎯 Day 1 Interview Questions

Now let's test whether you understand the **patterns**, not whether you memorized queries.

### Question 1

Find all employees whose salary is **greater than ₹50,000**.

### Question 2

Find employees who live in **Delhi AND are younger than 30**.

### Question 3

Find the **3 highest-paid employees**.

### Question 4

Find employees who live in **Delhi OR Meerut**.

### Question 5 🔥

Find the **2 highest-paid employees from Delhi**.

---

# 🏆 Day 1 LeetCode

After these interview questions, your Day 1 LeetCode set is:

| LeetCode | Pattern             | Status |
| -------- | ------------------- | ------ |
| **1757** | `WHERE + AND`       | ✅      |
| **584**  | `WHERE + OR + NULL` | 🟡     |
| **595**  | `WHERE + OR`        | ✅      |

We'll **not solve 584 yet** in Day 1 because `NULL` belongs to our Day 2 pattern.

---

## 📌 Your Day 1 checklist

```text
SELECT + FROM       ✅
WHERE               ✅
Comparison          ✅
AND                 ✅
OR                  ✅
ORDER BY            ✅
LIMIT               ✅

Interview questions → NOW
LeetCode 1757       → ✅
LeetCode 595        → ✅
```

### Your turn now 👇

Start with **Day 1 Interview Question #1**:

> **Find all employees whose salary is greater than ₹50,000.**

Write the SQL yourself.
