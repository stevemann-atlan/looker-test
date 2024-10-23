include: "/views/**/*.view.lkml"                # include all views in the views/ folder in this project
include: "/models/*.model.lkml"

explore: instacart_orders_from_view  {
  view_name: instacart_orders
}

explore: +instacart_products {
  from: instacart_order_products
}
