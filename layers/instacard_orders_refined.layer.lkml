# include all the views
include: "/views/**/*.view.lkml"

# The name of this view in Looker is "Instacart Orders"
view: +instacart_orders {
  measure: total_order_number {
    type: sum
    sql: ${order_number} ;;  }

  measure: count {
    type: count
    drill_fields: [order_id]
  }
}

view : +instacart_orders {
  dimension: order_dow {
    hidden: yes
  }
}

view : +instacart_orders {
  measure: count {
    hidden: yes
  }
}

view : +instacart_orders {
  measure: count {
    hidden: no
  }
}