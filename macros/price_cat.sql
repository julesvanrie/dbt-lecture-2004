{% macro price_cat(p) %}

case
    when {{ p }} > 25 then "Expensive"
    when {{ p }} > 15 then "Normal"
    else "Cheap"
end

{% endmacro %}