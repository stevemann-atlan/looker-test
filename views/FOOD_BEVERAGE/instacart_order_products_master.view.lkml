# The name of this view in Looker is "Instacart Order Products Master"
view: instacart_order_products_master {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "FOOD_BEVERAGE"."INSTACART_ORDER_PRODUCTS_MASTER" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Add to Cart Order" in Explore.

  dimension: add_to_cart_order {
    type: number
    sql: ${TABLE}."add_to_cart_order" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_add_to_cart_order {
    type: sum
    sql: ${add_to_cart_order} ;;  }
  measure: average_add_to_cart_order {
    type: average
    sql: ${add_to_cart_order} ;;  }

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

  dimension: order_id {
    type: number
    sql: ${TABLE}."order_id" ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: reordered {
    type: number
    sql: ${TABLE}."reordered" ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
