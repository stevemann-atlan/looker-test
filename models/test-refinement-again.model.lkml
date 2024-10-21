connection: "atlan_sample_data"

include: "/views/**/*.view.lkml"                # include all views in the views/ folder in this project

explore: instacart_orders_from_view  {
  view_name: instacart_orders
}
