# The name of this view in Looker is "Instacart Product Master"
view: instacart_product_master {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "FOOD_BEVERAGE"."INSTACART_PRODUCT_MASTER" ;;
  drill_fields: [product_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."product_id" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aisle ID" in Explore.

  dimension: aisle_id {
    type: number
    sql: ${TABLE}."aisle_id" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."department" ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}."department_id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }
  measure: count {
    type: count
    drill_fields: [product_id, product_name]
  }
}
