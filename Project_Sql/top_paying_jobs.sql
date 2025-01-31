/*What does the top 10 highest-paying remote Data Engineer jobs reveal 
 about the future of work, talent demand, and the value of location-independent roles?
*/

SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg ,
    job_posted_date,
    name AS company_name
FROM 
    job_postings_fact 
LEFT JOIN company_dim
     ON job_postings_fact.company_id = company_dim.company_id    

WHERE 
     job_title_short = 'Data Engineer' AND 
     job_location = 'Anywhere' AND 
     salary_year_avg IS NOT NULL
ORDER BY 
      salary_year_avg DESC    
LIMIT 10;          