connection: "events_ecommerce"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: order_items {

  join: inventory_items {
    type: left_outer
    relationship: one_to_one
    sql_on: ${inventory_items.id}=${order_items.inventory_item_id} ;;
  }

  join: users {
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }

  join: lifetime_orders {
    type:  left_outer
    relationship: one_to_one
    sql_on: ${order_items.user_id} = ${lifetime_orders.id} ;;

  }


}

explore: users {}
