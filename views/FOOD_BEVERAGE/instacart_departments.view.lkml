# The name of this view in Looker is "Instacart Departments"
view: instacart_departments {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "FOOD_BEVERAGE"."INSTACART_DEPARTMENTS" ;;
  drill_fields: [department_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: department_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."department_id" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Department" in Explore.

  dimension: department {
    type: string
    sql: ${TABLE}."department" ;;
  }
  measure: count {
    type: count
    drill_fields: [department_id]
  }
}
