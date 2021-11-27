SELECT
  t.block_timestamp
  , t.hash as rcvd_tx_hash
  , t.is_coinbase as is_coinbase
  , o.index as rcvd_tx_id
  , o.addresses[ORDINAL(1)] as address
  , o.value
FROM
  `bigquery-public-data.crypto_bitcoin.transactions` t
  , UNNEST(t.outputs) o
WHERE 
  block_timestamp_month = '{year}-{month}-01'
