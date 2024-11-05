# The name of this view in Looker is "Authors"
view: authors {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  derived_table: {
    sql: select * from Application.Authors ;;
  }
}
