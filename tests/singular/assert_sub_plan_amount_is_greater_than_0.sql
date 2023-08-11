-- Subscription plan price cannot be negative, pricing should always be >= 0
-- This returns records where this isn't true to make the test fail

SELECT
    *
FROM {{ ref('stg_bingeflix_subscription_plans') }}
WHERE pricing <= 0
