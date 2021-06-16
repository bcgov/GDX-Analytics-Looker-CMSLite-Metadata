view: asset_themes {
  # # You can specify the table name if it's different from the view name:
  sql_table_name: test.asset_themes ;;
  #
  dimension: asset_theme_id {
    type: string
    sql: ${TABLE}.asset_theme_id ;;
    group_label: "Asset IA"
  }

  dimension: asset_subtheme_id {
    type: string
    sql: ${TABLE}.asset_subtheme_id ;;
    group_label: "Asset IA"
  }

  dimension: asset_topic_id {
    type: string
    sql: ${TABLE}.asset_topic_id ;;
    group_label: "Asset IA"
  }

  dimension: asset_subtopic_id {
    type: string
    sql: ${TABLE}.asset_subtopic_id ;;
    group_label: "Asset IA"
  }

  dimension: asset_subsubtopic_id {
    type: string
    sql: ${TABLE}.asset_subsubtopic_id ;;
    group_label: "Asset IA"
  }

  dimension: asset_theme {
    type: string
    sql: ${TABLE}.asset_theme ;;
    group_label: "Asset IA"
  }

  dimension: asset_subtheme {
    type: string
    sql: ${TABLE}.asset_subtheme ;;
    group_label: "Asset IA"
  }

  dimension: asset_topic {
    type: string
    sql: ${TABLE}.asset_topic ;;
    group_label: "Asset IA"
  }

  dimension: asset_subtopic {
    type: string
    sql: ${TABLE}.asset_subtopic ;;
    group_label: "Asset IA"
  }

  dimension: asset_subsubtopic {
    type: string
    sql: ${TABLE}.asset_subsubtopic ;;
    group_label: "Asset IA"
  }

  measure: count {
    type: count
    drill_fields: [asset_subtheme_id, asset_subtheme_id, google_pdt.count, asset_themes.count]
  }

}
