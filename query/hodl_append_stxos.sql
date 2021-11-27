SELECT
  address
  , rcvd_timestamp
  , rcvd_date
  , rcvd_v
  , spnt_timestamp
FROM
  `{project_id}.{dataset}.{table_raw_utxos}`
WHERE
  spnt_timestamp IS NOT NULL
