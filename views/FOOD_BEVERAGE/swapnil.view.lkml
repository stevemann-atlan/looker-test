# The name of this view in Looker is "Swapnil"
view: swapnil {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "FOOD_BEVERAGE"."SWAPNIL" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Column1" in Explore.

  dimension: column1 {
    type: number
    sql: ${TABLE}."COLUMN1" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_column1 {
    type: sum
    sql: ${column1} ;;  }
  measure: average_column1 {
    type: average
    sql: ${column1} ;;  }

  dimension: column2 {
    type: string
    sql: ${TABLE}."COLUMN2" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: column3 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."COLUMN3" ;;
  }

  dimension: column4 {
    type: number
    sql: ${TABLE}."COLUMN4" ;;
  }

  dimension: column5 {
    type: string
    sql: ${TABLE}."COLUMN5" ;;
  }
  measure: count {
    type: count
  }
}
