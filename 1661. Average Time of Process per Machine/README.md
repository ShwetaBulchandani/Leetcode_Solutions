# Factory Website Process Time Calculation

## Problem Statement

The factory website has multiple machines, each running the same number of processes. Given a table representing user activities on the website, we need to find the average time each machine takes to complete a process.

### Table Structure

**Activity**

| Column Name   | Type   |
|---------------|--------|
| machine_id    | int    |
| process_id    | int    |
| activity_type | enum   |
| timestamp     | float  |

- `machine_id`: ID of a machine.
- `process_id`: ID of a process running on the machine.
- `activity_type`: ENUM ('start', 'end') indicating the start or end of a process.
- `timestamp`: Current time in seconds.

### Assumptions

- The combination of `(machine_id, process_id, activity_type)` forms the primary key.
- Each 'start' timestamp precedes its corresponding 'end' timestamp.

### Task

Calculate the average time taken by each machine to complete a process.

## Example

### Input

**Activity table:**

| machine_id | process_id | activity_type | timestamp |
|------------|------------|---------------|-----------|
| 0          | 0          | start         | 0.712     |
| 0          | 0          | end           | 1.520     |
| 0          | 1          | start         | 3.140     |
| 0          | 1          | end           | 4.120     |
| 1          | 0          | start         | 0.550     |
| 1          | 0          | end           | 1.550     |
| 1          | 1          | start         | 0.430     |
| 1          | 1          | end           | 1.420     |
| 2          | 0          | start         | 4.100     |
| 2          | 0          | end           | 4.512     |
| 2          | 1          | start         | 2.500     |
| 2          | 1          | end           | 5.000     |

### Output

| machine_id | processing_time |
|------------|-----------------|
| 0          | 0.894           |
| 1          | 0.995           |
| 2          | 1.456           |

### Explanation

- Machine 0: Average time = ((1.520 - 0.712) + (4.120 - 3.140)) / 2 = 0.894
- Machine 1: Average time = ((1.550 - 0.550) + (1.420 - 0.430)) / 2 = 0.995
- Machine 2: Average time = ((4.512 - 4.100) + (5.000 - 2.500)) / 2 = 1.456
