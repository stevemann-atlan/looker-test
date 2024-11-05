# The name of this view in Looker is "Cities"
view: cities {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: Application.Cities ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "City ID" in Explore.

  dimension: city_id {
    type: number
    sql: ${TABLE}.CityID ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.CityName ;;
  }

  dimension: last_edited_by {
    type: number
    sql: ${TABLE}.LastEditedBy ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_last_edited_by {
    type: sum
    sql: ${last_edited_by} ;;  }
  measure: average_last_edited_by {
    type: average
    sql: ${last_edited_by} ;;  }

  dimension: latest_recorded_population {
    type: number
    sql: ${TABLE}.LatestRecordedPopulation ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: state_province_id {
    type: number
    sql: ${TABLE}.StateProvinceID ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: valid_from {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ValidFrom ;;
  }

  dimension_group: valid_to {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ValidTo ;;
  }
  measure: count {
    type: count
    drill_fields: [city_name]
  }
}
