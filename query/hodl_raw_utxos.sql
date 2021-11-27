SELECT
  o.address
  , o.block_timestamp as rcvd_timestamp
  , EXTRACT(DATE from o.block_timestamp) as rcvd_date
  , o.value as rcvd_v
  , o.rcvd_tx_hash
  , o.rcvd_tx_id
  , i.block_timestamp as spnt_timestamp
FROM
  `{project_id}.{dataset}.{table_outputs}` o
LEFT JOIN
  `{project_id}.{dataset}.{table_inputs}` i
ON
  o.address = i.address
AND
  o.value = i.value
AND
  o.rcvd_tx_hash = i.rcvd_tx_hash
AND
  o.rcvd_tx_id = i.rcvd_tx_id
AND
  o.block_timestamp <= i.block_timestamp
