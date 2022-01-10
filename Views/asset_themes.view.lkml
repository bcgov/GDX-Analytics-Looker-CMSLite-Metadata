view: asset_themes {
  # # You can specify the table name if it's different from the view name:
  sql_table_name: cmslite.asset_themes ;;
  #

  dimension: node_id {
    description: "The alphanumeric CMS Lite node identifier."
    type: string
    sql: ${TABLE}.node_id ;;
  }

  dimension: title {
    description: "The CMS Lite node title."
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: parent_node_id {
    description: "The alphanumeric CMS Lite node identifier of the parent node."
    type: string
    sql: ${TABLE}.parent_node_id ;;
  }

  dimension: parent_title {
    description: "The CMS Lite parent node title."
    type: string
    sql: ${TABLE}.parent_title ;;
  }

  dimension: hr_url {
    type: string
    sql: ${TABLE}.hr_url ;;
  }

  dimension: asset_theme_id {
    description: "The alphanumeric CMS Lite theme identifier."
    type: string
    sql: COALESCE(${TABLE}.asset_theme_id,'') ;;
  }

  dimension: asset_subtheme_id {
    primary_key: yes
    description: "The alphanumeric CMS Lite subtheme identifier."
    type: string
    sql: COALESCE(${TABLE}.asset_subtheme_id,'') ;;
  }

  dimension: asset_topic_id {
    type: string
    sql: ${TABLE}.asset_topic_id ;;
  }

  dimension: asset_subtopic_id {
    type: string
    sql: ${TABLE}.asset_subtopic_id ;;
  }

  dimension: asset_subsubtopic_id {
    type: string
    sql: ${TABLE}.asset_subsubtopic_id ;;
  }

  dimension: asset_theme {
    description: "The CMS Lite asset theme."
    type: string
    sql: COALESCE(${TABLE}.asset_theme,'(no theme)') ;;
  }

  dimension: asset_subtheme {
    type: string
    sql: ${TABLE}.asset_subtheme ;;
  }

  dimension: asset_topic {
    type: string
    sql: ${TABLE}.asset_topic ;;
  }

  dimension: asset_subtopic {
    type: string
    sql: ${TABLE}.asset_subtopic ;;
  }

  dimension: asset_subsubtopic {
    type: string
    sql: ${TABLE}.asset_subsubtopic ;;
  }

  measure: count {
    type: count
    drill_fields: [asset_subtheme_id, asset_subtheme_id, google_pdt.count, asset_themes.count]
  }

}
