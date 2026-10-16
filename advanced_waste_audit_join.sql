SELECT 
    w."demarcation.label" AS municipality_name, 
    w."amount.sum" AS total_wasted_money,
    a."Label" AS audit_result,
    a."Year_End" AS audit_year
FROM uifwexp_aggregate w
INNER JOIN audit_opinion_facts a 
    ON w."demarcation.code" = a."Demarcation_Code"
    AND w."financial_year_end.year" = a."Year_End"
ORDER BY total_wasted_money DESC
LIMIT 10;
