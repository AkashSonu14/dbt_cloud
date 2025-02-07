{% macro grouping_macro(category,size)%}
    {% set query_1 %}
        SELECT category, size, "courier status", sum(amount)
        FROM amazon_sales
        WHERE category = '{{category}}' AND size = '{{size}}'
        GROUP BY category, size, "courier status"
    {% endset %}
    {{ return(query_1)}}
{% endmacro %}
