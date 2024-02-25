select Employee.name, Bonus.bonus 
from Employee 
LEFT JOIN bonus ON Employee.empID = Bonus.empID 
WHERE bonus < 1000 OR Bonus IS NULL ;