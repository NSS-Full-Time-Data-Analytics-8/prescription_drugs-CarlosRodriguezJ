SELECT MAX(total_claim_count) AS claim
FROM prescription;
--Q1A 4538

SELECT specialty_description, SUM(total_claim_court) as claims
FROM prescriber  
INNER JOIN prescription USING (npi) 
GROUP BY specialty_description   
ORDER BY claims DESC;
--Q2A Family practice 9,752,347

SELECT specialty_descrption, SUM(total_claim_count) AS Claims
FROM prescriber
INNER JOIN prescription USING (npi)  
INNER JOIN drug USING (drug_name)  
GROUP BY specialty_description 
ORDER BY claim DESC 

Q3