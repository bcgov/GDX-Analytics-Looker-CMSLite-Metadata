view: user_activity {
  sql_table_name: cmslite.user_activity ;;

  dimension_group: activity {
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
    sql: ${TABLE}.activity_date ;;
  }

  dimension: activity_type {
    type: string
    sql: ${TABLE}.activity_type ;;
    drill_fields: [user_idir, group_name, memo, activity_type]
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.memo ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_idir {
    type: string
    sql: ${TABLE}.user_idir ;;
  }

  dimension: primary_key {
    primary_key: yes
    sql: ${TABLE}.activity_type || ${TABLE}.group_name || ${TABLE}.user_idir ;;
  }

  measure: count {
    type: count
    drill_fields: [user_idir, group_name]
}
}
