--Q1A
Select scrib.npi,
scrib.nppes_provider_last_org_name AS last_name,
scrib.nppes_provider_first_name AS first_name,
total_Claim_count AS scrip_count
from prescription AS scrip
inner join prescriber AS scrib
on scrip.npi = scrib.npi
order by scrip_count DESC;
--Q1B
Select distinct scrib.npi,
scrib.nppes_provider_first_name AS first_name,
scrib.nppes_provider_last_org_name AS last_name,
scrib.specialty_description AS Spec_desc,
scrip.total_claim_count AS total_claim_Count
from prescription AS scrip
inner join prescriber AS scrib
on scrip.npi = scrib.npi
order by total_claim_count DESC;
--Q2A
select
prescriber.specialty_description,
sum (prescription.total_claim_count) as claim
from prescriber
inner join prescription
using (npi)
GROUP BY Specialty_description
order by claim DESC;
--Q2b
select specialty_description, drug_name, generic_name, total_claim_count, drug.opioid_drug_flag
from prescriber
INNER JOIN prescription
USING (NPI)
INNER JOIN drug
USING (drug_name)
where drug.opioid_drug_flag = 'Y'
GROUP BY Specialty_description
ORDER BY total_claim_count DESC
--Q3A was trying to finish Q2b 
SELECT * 
FROM 