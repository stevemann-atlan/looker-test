
include: "/views/FOOD_BEVERAGE/*.view.lkml"
include: "/models/instacart_orders_from_model.model.lkml"

explore: instacart_orders_from_view  {
  view_name: instacart_orders
}

explore: +another_test_order_explore  {
  hidden: yes
}

explore: +instacart_products_test_from {
  from: instacart_order_products

  join: instacart_orders_summary {
    sql_on: ${instacart_products_test_from.order_id} = ${instacart_orders_summary.order_id} ;;
    relationship: many_to_one
  }
}
