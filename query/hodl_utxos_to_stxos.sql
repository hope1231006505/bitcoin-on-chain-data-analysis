SELECT
  *
FROM(
    SELECT
      u.address
      , u.rcvd_block
      , u.rcvd_v
      , u.rcvd_tx_hash
      , u.rcvd_tx_id
      , i.block_number as spnt_block
    FROM
      `{project_id}.{dataset}.{table_utxos}` u
    LEFT JOIN
      `{project_id}.{dataset}.{table_inputs}` i
    ON
      u.address = i.address
    AND
      u.rcvd_v = i.value
    AND
      u.rcvd_tx_hash = i.rcvd_tx_hash
    AND
      u.rcvd_tx_id = i.rcvd_tx_id
    AND
      u.rcvd_block <= i.block_number)
WHERE
  spnt_block IS NULL
