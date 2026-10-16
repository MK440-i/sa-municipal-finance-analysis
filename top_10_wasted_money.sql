SELECT "demarcation.label" AS municipality_name, SUM("amount.sum") AS total_wasted_money
FROM uifwexp_aggregate
GROUP BY "demarcation.label"
ORDER BY total_wasted_money DESC
LIMIT 10;
