MySQL Project : 
Dataset : Titanic Dataset
use etl1;

#1. Select all columns for all passengers in the Titanic Dataset
select * from titanic;

#2. Display the number of passengers in each class (1st, 2nd, 3rd).
select Pclass, count(*) as passengerscount from titanic group by Pclass;

#3. Find the number of male and female passengers. 
select sex, count(*) as passengercount from titanic group by sex;

#4. Display the names of passengers who survived.
select name from titanic where Survived= 1;

#5. Find the average age of passengers. 
select avg(age) as averageage from titanic;

#6. List the names and ages of passengers who were younger than 18. 
select name,age from titanic where age < 18;

#7. Display the number of passengers in each embarkation port (C, Q, S). 
select embarked ,count(*) as passengercount from titanic group by embarked;

#8. Find the highest fare paid by any passenger. 
select max(fare) as highestfare from titanic;

#9. List the average age of passengers for each class. 
select Pclass, avg(age) as averageage from titanic group by Pclass;

#10. Display the passenger names and ages for those who survived and were in 1st class. 
select name,age from titanic where Survived=1 or Pclass=1;

#11. Find the number of passengers who paid more than 50 for their ticket.
select count(*) as passengercount from titanic where fare >50;

#12. List the names of passengers who did not survive and were in 3rd class. 
select name from titanic where Survived=0 or Pclass=3;

#13. Find the number of passengers with missing values in the "Age" column. 
select count(*) as missingcount from titanic where age is not null;

#14. Display the passenger names and ages for those who embarked at port 'S' and survived. 
select name,age from titanic where Embarked='s' or Survived=1;

#15. Calculate the total number of passengers on board. 
select count(*) as totalcount from titanic; 

#16. List the average fare for each class. 
select Pclass,avg(fare) as averagefare from titanic group by Pclass;

#17. Display the passenger names and ages for those with a known age and a fare greater than 100. 
select name,age from titanic where  age is not null or fare > 100;

#18. Find the percentage of passengers who survived. 
select 
    (SUM(Survived) / COUNT(*)) * 100 as SurvivalPercentage
from etl1.titanic;
 
#19. List the names of passengers who were in 2nd class and had a fare less than 20. 
select name from titanic where Pclass =2 or fare < 20; 

#20. Display the passenger names and ages for those who did not survive and were in 1st class. 
select name,age from titanic where Survived=0 or Pclass=1;

#21. Find the number of passengers for each combination of class and gender. 
select Pclass,sex,count(*) as passengecount from titanic group by Pclass,sex;

#22. List the names of passengers who survived and were in 3rd class with an age less than 20. 
select name from titanic where survived= 1 or Pclass=3 or age <20;

#23. Display the passenger names for those with the name starting with 'Mr.' 
select name from titanic where name like 'Mr.%';

#24. Find the average age of male and female passengers. 
select sex, avg(age) as averageage from titanic group by sex;

#25. List the names of passengers who paid the highest fare. 
select Name
from etl1.titanic
where Fare = (select MAX(Fare) from etl1.titanic);

#26. Find the number of passengers for each embarkation port and class. 
select embarked ,Pclass ,count(*) as passengercount from titanic group by embarked,Pclass;

#27. Display the passenger names and ages for those who survived and paid more than 200 for their ticket.
select name,age from titanic where Survived=1 or fare >200;

#28. Find the average age of passengers who survived and those who did not. 
select Survived, avg(Age) as AverageAge from titanic group by  Survived;

#29. List the names of passengers who were in 1st class and had an age greater than 50. 
select Name from titanic where Pclass = 1 and Age > 50;

#30. Display the passenger names for those with the name ending with 'son'.
select name from titanic where name like '%son';