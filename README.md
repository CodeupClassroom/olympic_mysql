# Best Practices

Our DB should be a "single source of truth"; we don't want any inaccuracies.

Use strings for phone numbers vs. INT because INT only goes up to 2147483647 and UNSIGNED INT only goes up to 4294967295

Use Decimal for money, not float or double

Use Date, Datetime, time, or year for dates rather than strings or numbers.