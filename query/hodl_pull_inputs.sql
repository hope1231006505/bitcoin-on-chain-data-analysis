SELECT 
  t.block_number
  , t.hash as spnt_tx_hash
  , i.index as spnt_tx_id
  , i.spent_transaction_hash as rcvd_tx_hash
  , i.spent_output_index as rcvd_tx_id
  , i.addresses[ORDINAL(1)] as address
  , i.value
FROM 
  `bigquery-public-data.crypto_bitcoin.transactions` t
  , UNNEST(t.inputs) i
WHERE 
  block_timestamp_month = '{year}-{month}-01'
