SELECT account.name AS "nasabah", 
       SUM(transaction.amount) AS "transfer_jumlah"
FROM account
	INNER JOIN transaction ON transaction.account_id = account.account_id
	WHERE date_part('MONTH', transaction.transaction_date) = 5
GROUP BY name;