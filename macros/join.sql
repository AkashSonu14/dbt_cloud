{% macro join_macro(status, gender) %}
    {% set query %}
        SELECT 
            CustomerKey,
            FirstName,
            LastName,
            EmailAddress,
            YearlyIncome,
            MaritalStatus,
            Gender
        FROM dimcustomer
        LEFT JOIN dimgeography
            ON dimcustomer.geographykey = dimgeography.geographykey
        WHERE maritalstatus = '{{ status }}' 
          AND gender = '{{ gender }}'
    {% endset %}
    {{ return(query) }}
{% endmacro %}