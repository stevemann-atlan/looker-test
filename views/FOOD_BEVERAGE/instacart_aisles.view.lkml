# The name of this view in Looker is "Instacart Aisles"
view: instacart_aisles {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "FOOD_BEVERAGE"."INSTACART_AISLES" ;;
  drill_fields: [aisle_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: aisle_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."aisle_id" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aisle" in Explore.

  dimension: aisle {
    type: string
    sql: ${TABLE}."aisle" ;;
  }
  measure: count {
    type: count
    drill_fields: [aisle_id]
  }
}
