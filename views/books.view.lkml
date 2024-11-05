# The name of this view in Looker is "Books"
view: books {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: Application.Books ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Author ID" in Explore.

  dimension: author_id {
    type: number
    sql: ${TABLE}.AuthorID ;;
  }

  dimension: book_id {
    type: number
    sql: ${TABLE}.BookID ;;
  }

  dimension: book_title {
    type: string
    sql: ${TABLE}.BookTitle ;;
  }
  measure: count {
    type: count
  }
}
