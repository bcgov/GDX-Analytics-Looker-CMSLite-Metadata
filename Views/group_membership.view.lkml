view: group_membership {
  sql_table_name: cmslite.user_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: group_id {
    type: string
    sql: ${TABLE}.group_id ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }

  dimension: is_group_mgr {
    type: yesno
    sql: ${TABLE}.is_group_mgr ;;
  }

  dimension: site_key {
    type: string
    sql: ${TABLE}.site_key ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, group_name]
  }
}
