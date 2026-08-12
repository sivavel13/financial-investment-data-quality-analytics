# Financial Investment Data Quality & Analytics

## Portfolio Project — Data Analyst / Financial Data Quality

### Objective
An end-to-end financial data-quality and analytics project demonstrating data profiling,
validation, discrepancy identification, exception reporting, investment analysis, SQL,
Python/Pandas and reporting preparation.

### Dataset
- Branch: 1,000 records
- Customer: 10,000 records
- Transaction: 10,000 records
- Transaction period: 2023–2024
- Bank in supplied data: HDFC Bank

### Data Model
**Branch (1) → Customer (many) → Transaction (many)**

### Data Quality Findings
- 50 missing `Firm_Revenue` values in Branch
- 500 missing `Age` values in Customer
- 500 missing `Customer_Type` values in Customer
- 500 missing `City` values in Customer
- No duplicate rows detected
- No orphan Customer → Branch relationships
- No orphan Transaction → Customer relationships
- No negative transaction/investment amounts detected under the implemented checks

### Skills Demonstrated
Python • Pandas • NumPy • SQL • Data Cleaning • Data Validation • Data Quality Assurance
• Exception Reporting • Relational Data Validation • Financial/Investment Analysis • Power BI preparation

### Business Questions
1. Which regions generate the most transaction and investment value?
2. Which investment type contributes the most investment value?
3. Which branches combine strong customer activity with financial performance?
4. Where are data-quality exceptions concentrated?
5. Which customer segments show stronger investment activity?

### Portfolio Note
This project demonstrates financial-data quality and investment analytics using the supplied
banking dataset. It does not claim professional mutual-fund industry experience.
