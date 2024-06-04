SELECT bank.name AS "bank name", 
       SUM(transaction.amount) AS "transfer jumlah"
FROM bank
	INNER JOIN transaction ON transaction.bank_id = bank.bank_core
	WHERE date_part('MONTH', transaction.transaction_date) = 5
GROUP BY name;