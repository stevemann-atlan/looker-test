# The name of this view in Looker is "Us Gdp"
view: us_gdp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "US_ECONOMIC_DATA"."us_gdp" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Currentdollar Gdp" in Explore.

  dimension: currentdollar_gdp {
    type: number
    sql: ${TABLE}."Current-dollar GDP" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_currentdollar_gdp {
    type: sum
    sql: ${currentdollar_gdp} ;;  }
  measure: average_currentdollar_gdp {
    type: average
    sql: ${currentdollar_gdp} ;;  }

  dimension: dummy {
    type: string
    sql: ${TABLE}."DUMMY" ;;
  }

  dimension: geo_name {
    type: string
    sql: ${TABLE}."GeoName" ;;
  }

  dimension: gross_operating_surplus {
    type: number
    sql: ${TABLE}."Gross operating surplus" ;;
  }

  dimension: real_gdp {
    type: number
    sql: ${TABLE}."Real GDP" ;;
  }

  dimension: secret {
    type: string
    sql: ${TABLE}."SECRET" ;;
  }

  dimension: subsidies {
    type: number
    sql: ${TABLE}."Subsidies" ;;
  }

  dimension: taxes_on_production_and_imports {
    type: number
    sql: ${TABLE}."Taxes on production and imports" ;;
  }

  dimension: taxes_on_production_and_imports_less_subsides {
    type: number
    sql: ${TABLE}."Taxes on production and imports less subsides" ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}."ZIP" ;;
  }
  measure: count {
    type: count
    drill_fields: [geo_name]
  }
}
