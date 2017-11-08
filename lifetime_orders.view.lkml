view: lifetime_orders {
  derived_table: {
    sql: select a.id,count(*)
      from users a
      inner join order_items b
        on a.id = b.user_id
        group by 1
       ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: count {
    type: string
    sql: ${TABLE}.count ;;
  }

  set: detail {
    fields: [id, count]
  }
}
