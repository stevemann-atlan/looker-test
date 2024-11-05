connection: "atlan_sample_data"

include: "/views/FOOD_BEVERAGE/*.view.lkml"                # include all views in the views/ folder in this project

explore: instacart_products_test_from {
  from: instacart_orders
}

explore: another_test_order_explore  {
  from: instacart_orders
}
