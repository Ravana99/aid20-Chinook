create or replace view Contact(FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email) as
(select FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email from Customer)
union
(select FirstName, LastName, "Chinook Corporation", Address, City, State, Country, PostalCode, Phone, Fax, Email from Employee);
