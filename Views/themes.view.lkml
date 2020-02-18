view: themes {
  sql_table_name: cmslite.themes ;;
  drill_fields: [subtheme_id]

  dimension: subtheme_id {
    primary_key: yes
    description: "The alphanumeric CMS Lite subtheme identifier."
    type: string
    sql: ${TABLE}.subtheme_id ;;
  }

  dimension: hr_url {
    type: string
    sql: ${TABLE}.hr_url ;;
  }

  dimension: node_id {
    description: "The alphanumeric CMS Lite node identifier."
    type: string
    sql: ${TABLE}.node_id ;;
  }

  dimension: parent_node_id {
    description: "The alphanumeric CMS Lite node identifier of the parent node."
    type: string
    sql: ${TABLE}.parent_node_id ;;
  }

  dimension: subtheme {
    description: "The CMS Lite subtheme."
    type: string
    sql: ${TABLE}.subtheme ;;
  }

  dimension: theme {
    description: "The CMS Lite theme."
    type: string
    sql: ${TABLE}.theme ;;
  }

  dimension: theme_id {
    description: "The alphanumeric CMS Lite theme identifer."
    type: string
    # hidden: yes
    sql: ${TABLE}.theme_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: parent_title {
    type: string
    sql: ${TABLE}.parent_title ;;
  }

  dimension: topic {
    description: "The CMS Lite topic."
    type: string
    sql: ${TABLE}.topic ;;
  }

  dimension: topic_id {
    description: "The alphanumeric CMS Lite topic identifier."
    type: string
    sql: ${TABLE}.topic_id ;;
  }

  measure: count {
    type: count
    drill_fields: [subtheme_id, themes.subtheme_id, google_pdt.count, themes.count]
  }
}
