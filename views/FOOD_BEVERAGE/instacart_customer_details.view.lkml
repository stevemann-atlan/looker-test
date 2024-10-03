# The name of this view in Looker is "Instacart Customer Details"
view: instacart_customer_details {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "FOOD_BEVERAGE"."INSTACART_CUSTOMER_DETAILS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Customer Mobile" in Explore.

  dimension: customer_mobile {
    type: number
    sql: ${TABLE}."CUSTOMER_MOBILE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_customer_mobile {
    type: sum
    sql: ${customer_mobile} ;;  }
  measure: average_customer_mobile {
    type: average
    sql: ${customer_mobile} ;;  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."CUSTOMER_NAME" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."USER_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
