# include all the views
include: "/views/**/*.view.lkml"

# The name of this view in Looker is "Instacart Orders"
view : +instacart_orders {
  measure: count {
    hidden: no
  }
}
