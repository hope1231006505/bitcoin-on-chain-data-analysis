SELECT
  *
FROM
  `{project_id}.{dataset}.{table_raw_utxos}`
WHERE
  spnt_timestamp IS NULL
