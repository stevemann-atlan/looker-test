# The name of this view in Looker is "Instacart Unique Users"
view: instacart_unique_users {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "FOOD_BEVERAGE"."INSTACART_UNIQUE_USERS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Total User" in Explore.

  dimension: total_user {
    type: number
    sql: ${TABLE}."TOTAL_USER" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_total_user {
    type: sum
    sql: ${total_user} ;;  }
  measure: average_total_user {
    type: average
    sql: ${total_user} ;;  }
  measure: count {
    type: count
  }
}
