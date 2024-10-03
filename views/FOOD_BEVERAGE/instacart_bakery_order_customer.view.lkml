# The name of this view in Looker is "Instacart Bakery Order Customer"
view: instacart_bakery_order_customer {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "FOOD_BEVERAGE"."INSTACART_BAKERY_ORDER_CUSTOMER" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aisle" in Explore.

  dimension: aisle {
    type: string
    sql: ${TABLE}."aisle" ;;
  }

  dimension: aisle_id {
    type: number
    sql: ${TABLE}."aisle_id" ;;
  }

  dimension: customer_mobile {
    type: number
    sql: ${TABLE}."CUSTOMER_MOBILE" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."CUSTOMER_NAME" ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}."day_of_week" ;;
  }

  dimension: days_since_prior_order {
    type: string
    sql: ${TABLE}."days_since_prior_order" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."department" ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}."department_id" ;;
  }

  dimension: eval_set {
    type: string
    sql: ${TABLE}."eval_set" ;;
  }

  dimension: order_hour_of_day {
    type: number
    sql: ${TABLE}."order_hour_of_day" ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}."order_number" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_order_number {
    type: sum
    sql: ${order_number} ;;  }
  measure: average_order_number {
    type: average
    sql: ${order_number} ;;  }

  dimension: product_id {
    type: number
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name, product_name]
  }
}
