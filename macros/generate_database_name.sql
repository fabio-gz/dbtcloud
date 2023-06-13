{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- set default_database = target.database -%}
    {%- set production_database = 'prod-data-389717' -%}

    {% if custom_database_name %}

    
        {% if target.name == "prod" %}

            {{ production_database }}

        {% else %}

            {{ custom_database_name }}

        {% endif %}
        

    {% else %}

        {{ default_database }}

    {% endif %}

{% endmacro %}
