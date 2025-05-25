										--- BANK DATA ANALYSIS ---

Create database Bank_data_analytics;
use bank_data_analytics;

 CREATE TABLE  Bank_data_analytics (
    `State Abbr` VARCHAR(5),
    `Account ID` VARCHAR(20),
    `Age` VARCHAR(10),
    `BH Name` VARCHAR(50),
    `Bank Name` VARCHAR(20),
    `Branch Name` VARCHAR(50),
    `Caste` VARCHAR(20),
    `Center Id` VARCHAR(10),
    `City` VARCHAR(50),
    `Client id` INT,
    `Client Name` VARCHAR(100),
    `Close Client` VARCHAR(5),
    `Closed Date` VARCHAR(50),
    `Credif Officer Name` VARCHAR(100),
    `Dateof Birth` VARCHAR(50),
    `Disb By` VARCHAR(100),
    `Disbursement Date` VARCHAR(50),
    `Disbursement Date (Years)` VARCHAR(10),
    `Gender ID` VARCHAR(10),
    `Home Ownership` VARCHAR(20),
    `Loan Status` VARCHAR(50),
    `Loan Transferdate` VARCHAR(10),
    `NextMeetingDate` VARCHAR(50),
    `Product Code` VARCHAR(10),
    `Grrade` VARCHAR(5),
    `Sub Grade` VARCHAR(5),
    `Product Id` VARCHAR(10),
    `Purpose Category` VARCHAR(50),
    `Region Name` VARCHAR(50),
    `Religion` VARCHAR(50),
    `Verification Status` VARCHAR(50),
    `State Abbr_2` VARCHAR(5),
    `State Name` VARCHAR(50),
    `Tranfer Logic` VARCHAR(5),
    `Is Delinquent Loan` VARCHAR(5),
    `Is Default Loan` VARCHAR(5),
    `Age _T` INT,
    `Delinq 2 Yrs` INT,
    `Application Type` VARCHAR(20),
    `Loan Amount` DECIMAL(12,2),
    `Funded Amount` DECIMAL(12,2),
    `Funded Amount Inv` DECIMAL(12,2),
    `Term` VARCHAR(20),
    `Int Rate` VARCHAR(10),
    `Total Pymnt` DECIMAL(12,6),
    `Total Pymnt inv` DECIMAL(12,2),
    `Total Rec Prncp` DECIMAL(12,2),
    `Total Fees` DECIMAL(12,2),
    `Total Rrec int` DECIMAL(12,2),
    `Total Rec Late fee` DECIMAL(12,2),
    `Recoveries` DECIMAL(12,2),
    `Collection Recovery fee` DECIMAL(12,6)
);

show databases;
use bank_data_analytics;
select * from bank_data;
select * from debit_credit;
Select * from bank_data_analytics;

SELECT SUM(loan_amount) AS total_loan_amount_funded
FROM loans;





select * from bank_data;
select * from debit_credit;

-- 1Q--
SELECT SUM('loan status') AS Total_Loan_Amount
FROM bank_data
WHERE 'loan Status' = 'Approved';

-- 2Q--
SELECT COUNT(*) AS Total_Loans
FROM bank_data;

-- 3Q--
SELECT SUM('loan amount') AS Total_Collection
FROM bank_data;

-- 4Q--
SELECT SUM('Int rate') AS Total_Interest
FROM bank_data; 

-- 5Q--
SELECT `Branch Name`, 
       SUM(`Total Pymnt`) AS total_collection,
       SUM(`Total Pymnt` - `Funded Amount`) AS total_interest,
       SUM(`Total Fees`) AS total_fees
FROM bank_data
GROUP BY `Branch Name`;

-- 6Q--
SELECT `State Name`, COUNT(*) AS total_loans
FROM bank_data
GROUP BY `State Name`;

-- 7Q--
SELECT Religion, COUNT(*) AS total_loans
FROM bank_data
GROUP BY Religion;

-- 8Q--
SELECT `Purpose Category`, COUNT(*) AS total_loans
FROM bank_data
GROUP BY `Purpose Category`;

-- 9Q--
SELECT YEAR(`Disbursement Date`) AS year, COUNT(*) AS total_disbursed
FROM bank_data
GROUP BY year
ORDER BY year;

-- 10Q--
SELECT Grrade, COUNT(*) AS total_loans
FROM bank_data
GROUP BY Grrade;

-- 11Q--
SELECT COUNT(*) AS default_loan_count
FROM bank_data
WHERE `Loan Status` = 'Default';

-- 12Q--
SELECT COUNT(DISTINCT `Client ID`) AS delinquent_clients
FROM bank_data
WHERE `Is Delinquent Loan` = 'Y';

-- 13Q--
SELECT 
    ROUND(100 * SUM(CASE WHEN `Is Delinquent loan` = 'Y' THEN 1 ELSE 0 END) / COUNT(*), 2) 
    AS delinquent_loan_rate
FROM bank_data;

-- 14Q--
SELECT 
    ROUND(100 * SUM(CASE WHEN `Loan Status` = 'Default' THEN 1 ELSE 0 END) / COUNT(*), 2) 
    AS default_loan_rate
FROM bank_data;

-- 15Q--
SELECT `Loan Status`, COUNT(*) AS total_loans
FROM bank_data
GROUP BY `Loan Status`;

-- 16Q--
SELECT `Age`, COUNT(*) AS total_loans
FROM bank_data
GROUP BY `Age`;

-- 17Q--
SELECT `Term`, COUNT(*) AS total_loans
FROM bank_data
GROUP BY `Term`;

-- 18Q--
SELECT COUNT(*) AS no_verified_loans
FROM bank_data
WHERE `Verification Status` = 'Not Verified';


Select * from bank_data;










select * from bank_data;
select * from debit_credit;
-- 5Q--









SELECT * FROM bank_data LIMIT 5;


