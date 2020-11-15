create or replace view Contact(CustomerEmployeeId, Type, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, EmployeeToReach) as
(select CustomerId, 'Customer', FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId from Customer)
union
(select EmployeeId, 'Employee', FirstName, LastName, 'Chinook Corporation', Address, City, State, Country, PostalCode, Phone, Fax, Email, ReportsTo from Employee);
