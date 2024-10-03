# The name of this view in Looker is "Sales Mkt Expenses"
view: sales_mkt_expenses {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "FOOD_BEVERAGE"."SALES_MKT_EXPENSES" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Mkt Category" in Explore.

  dimension: mkt_category {
    type: string
    sql: ${TABLE}."MKT_CATEGORY" ;;
  }

  dimension: mkt_medium_id {
    type: number
    sql: ${TABLE}."MKT_MEDIUM_ID" ;;
  }

  dimension: mkt_medium_name {
    type: string
    sql: ${TABLE}."MKT_MEDIUM_NAME" ;;
  }

  dimension: mkt_spend {
    type: number
    sql: ${TABLE}."MKT_SPEND" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_mkt_spend {
    type: sum
    sql: ${mkt_spend} ;;  }
  measure: average_mkt_spend {
    type: average
    sql: ${mkt_spend} ;;  }
  measure: count {
    type: count
    drill_fields: [mkt_medium_name]
  }
}
