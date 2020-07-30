connection: "looker-private-demo"
label: "SDLC"
include: "/views/**/*.view" # include all the views
include: "/dashboards/*.dashboard.lookml" # include all the dashboards


explore: order_items {
  label: "SDLC Explore"

  join: inventory_items {
    type: full_outer
    relationship: one_to_one
    sql_on: ${inventory_items.id} = ${order_items.inventory_item_id} ;;
  }

  join: users {
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }

  join: products {
    type: left_outer
    relationship: many_to_one
    sql_on: ${products.id} = ${inventory_items.product_id} ;;
  }

}
