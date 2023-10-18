{% macro margin_percent(turnover, purchase_cost, precision=2) %}
   ROUND( SAFE_DIVIDE( ({{ turnover }} - {{ purchase_cost }}) , {{ turnover }} ) , {{ precision }})
{% endmacro %}

-- Calculate product_margin based on turnover and purchase_cost
{% macro margin(turnover, purchase_cost) %}
    {% set product_margin = turnover - purchase_cost %}
    {{ product_margin }}
{% endmacro %}
