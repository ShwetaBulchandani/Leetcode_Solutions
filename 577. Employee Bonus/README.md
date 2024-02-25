# Employee Bonus Report

## Problem Statement

Given two tables - `Employee` and `Bonus`, we need to report the name and bonus amount of each employee with a bonus less than 1000.

### Table Structure

**Employee**

| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |

- `empId`: Unique ID of an employee.
- `name`: Name of the employee.
- `supervisor`: ID of the supervisor (null for employees without a supervisor).
- `salary`: Salary of the employee.

**Bonus**

| Column Name | Type |
|-------------|------|
| empId       | int  |
| bonus       | int  |

- `empId`: Foreign key referencing `empId` from the `Employee` table.
- `bonus`: Bonus amount for the employee.

### Task

Report the name and bonus amount of each employee with a bonus less than 1000.

## Example

### Input

**Employee table:**

| empId | name   | supervisor | salary |
|-------|--------|------------|--------|
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |

**Bonus table:**

| empId | bonus |
|-------|-------|
| 2     | 500   |
| 4     | 2000  |

### Output

| name   | bonus |
|--------|-------|
| Brad   | null  |
| John   | null  |
| Dan    | 500   |

