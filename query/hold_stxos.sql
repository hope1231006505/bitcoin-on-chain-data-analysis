SELECT
  address
  , rcvd_block
  , rcvd_v
  , spnt_block
FROM
  `{project_id}.{dataset}.{table_raw_utxos}`
WHERE
  spnt_block IS NOT NULL
