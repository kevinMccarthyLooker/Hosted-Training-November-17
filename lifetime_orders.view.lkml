view: lifetime_orders {
  derived_table: {
    sql: select a.id,count(*) as cnt
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
    sql: ${TABLE}.cnt ;;
  }

  set: detail {
    fields: [id, count]
  }
}
