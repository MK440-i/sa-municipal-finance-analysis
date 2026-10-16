SELECT "financial_year_end.year" AS financial_year, SUM("amount.sum") AS total_wasted_nationwide
FROM uifwexp_aggregate
GROUP BY "financial_year_end.year"
ORDER BY financial_year DESC;

