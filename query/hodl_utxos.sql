SELECT
  *
FROM
  `{project_id}.{dataset}.{table_raw_utxos}`
WHERE
  spnt_block IS NULL
