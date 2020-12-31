view: cmslite_groups {
  sql_table_name: cmslite.cms_group ;;
  drill_fields: [id, site_key, active]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: site_key {
    type: string
    sql: ${TABLE}.site_key ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
