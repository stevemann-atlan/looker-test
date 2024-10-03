# The name of this view in Looker is "Instacart Ad Spend By User"
view: instacart_ad_spend_by_user {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "FOOD_BEVERAGE"."INSTACART_AD_SPEND_BY_USER" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Spend" in Explore.

  dimension: spend {
    type: number
    sql: ${TABLE}."SPEND" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_spend {
    type: sum
    sql: ${spend} ;;  }
  measure: average_spend {
    type: average
    sql: ${spend} ;;  }
  measure: count {
    type: count
  }
}
