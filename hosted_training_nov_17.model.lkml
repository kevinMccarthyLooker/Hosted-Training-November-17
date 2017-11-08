connection: "events_ecommerce"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: order_items {
  fields: [ALL_FIELDS*,-id]
}
explore: inventory_items {}

explore: order_items_technical {
  from: order_items

}


explore: users {}
