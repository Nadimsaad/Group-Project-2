create database project2;
use project2;

SELECT * FROM project2.employment_female;

create table hci_female;

ALTER TABLE survival_male
RENAME COLUMN mortality_male TO survival_male;


SELECT health_female.year as year, 
health_female.health_female as h, 
survival_female.survival_female as su, 
school_female.school_female as sc,
(health_female.health_female-78.0440362630324)/3.298332790895799,
(survival_female.survival_female-36.6)/16.9,
(school_female.school_female-87.62318)/0.7131399999999957,
(((health_female.health_female-78.0440362630324)/3.298332790895799)+((survival_female.survival_female-36.6)/16.9)+((school_female.school_female-87.62318)/0.7131399999999957))/3 as hci_female
from health_female 
join survival_female on health_female.year=survival_female.year
join school_female on health_female.year=school_female.year;

create table hci_female
as
SELECT health_female.year as year, 
(((health_female.health_female-78.0440362630324)/3.298332790895799)+((survival_female.survival_female-36.6)/16.9)+((school_female.school_female-87.62318)/0.7131399999999957))/3 as hci_female
from health_female 
join survival_female on health_female.year=survival_female.year
join school_female on health_female.year=school_female.year;

SELECT 
    MIN(health_female.health_female) AS min,
    (MAX(health_female.health_female) - MIN(health_female.health_female)) AS rang
FROM
    health_female;
-- 78.0440362630324	3.298332790895799

SELECT 
    MIN(survival_female.survival_female) AS min,
    (MAX(survival_female.survival_female) - MIN(survival_female.survival_female)) AS rang
FROM
    survival_female;
-- 36.6	16.9

SELECT 
    MIN(school_female.school_female) AS min,
    (MAX(school_female.school_female) - MIN(school_female.school_female)) AS rang
FROM
    school_female;
-- 87.62318	0.7131399999999957

SELECT health_male.year as year, 
health_male.health_male as h, 
survival_male.survival_male as su, 
school_male.school_male as sc,
(health_male.health_male-69.919576079512)/3.751534428233498,
(survival_male.survival_male-40.9)/16.4,
(school_male.school_male-89.20291)/1.3286599999999993,
(((health_male.health_male-69.919576079512)/3.751534428233498)+((survival_male.survival_male-40.9)/16.4)+((school_male.school_male-89.20291)/1.3286599999999993))/3 as hci_male
from health_male 
join survival_male on health_male.year=survival_male.year
join school_male on health_male.year=school_male.year;

create table hci_male
as
SELECT health_male.year as year, 
(((health_male.health_male-69.919576079512)/3.751534428233498)+((survival_male.survival_male-40.9)/16.4)+((school_male.school_male-89.20291)/1.3286599999999993))/3 as hci_male
from health_male 
join survival_male on health_male.year=survival_male.year
join school_male on health_male.year=school_male.year;

SELECT 
    MIN(health_male.health_male) AS min,
    (MAX(health_male.health_male) - MIN(health_male.health_male)) AS rang
FROM
    health_male;
-- 69.919576079512	3.751534428233498

SELECT 
    MIN(survival_male.survival_male) AS min,
    (MAX(survival_male.survival_male) - MIN(survival_male.survival_male)) AS rang
FROM
    survival_male;
-- 40.9	16.4

SELECT 
    MIN(school_male.school_male) AS min,
    (MAX(school_male.school_male) - MIN(school_male.school_male)) AS rang
FROM
    school_male;
-- 89.20291	1.3286599999999993

create table male
as
SELECT health_male.year as year, 
health_male,
survival_male,
school_male,
hci_male,
employment_male
from health_male 
join survival_male on health_male.year=survival_male.year
join school_male on health_male.year=school_male.year
join employment_male on health_male.year=employment_male.year
join hci_male on hci_male.year=school_male.year;

create table female
as
SELECT health_female.year as year, 
health_female,
survival_female,
school_female,
hci_female,
employment_female
from health_female 
join survival_female on health_female.year=survival_female.year
join school_female on health_female.year=school_female.year
join employment_female on health_female.year=employment_female.year
join hci_female on hci_female.year=school_female.year;