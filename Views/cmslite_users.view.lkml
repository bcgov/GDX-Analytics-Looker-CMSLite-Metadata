view: cmslite_users {
  sql_table_name: cmslite.user_status ;;
  drill_fields: [id, user_id, user_name, organization]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
    drill_fields: [user_name, user_id]
  }

  dimension_group: created_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_dt ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}.organization ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_name]
  }
}
