SELECT
    date_month,
    user_id,
    subscription_id,
    mrr_amount,
    {{ rolling_average_n_periods(
        column_name='mrr_amount',
        partition_by='user_id,subscription_id',
        n=4) }}
FROM {{ ref('fct_mrr') }}

-- {{ rolling_average_n_periods(column_name='revenue', partition_by='user_id,date_period', n=16) }}
