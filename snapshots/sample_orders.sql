{% snapshot sample_orders %}
{% set new_schema = target.schema + '_snapshot' %}
{{
    config(
      target_database = 'sample_db',
      target_schema = new_schema,
      unique_key = 'order_id',

      strategy = 'timestamp',
      updated_at = 'updated_at',
    )
}}

select * from sample_db.{{target.schema}}.sample_orders

{% endsnapshot %}