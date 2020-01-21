view: metadata {
  sql_table_name: cmslite.metadata ;;

  dimension: ancestor_nodes {
    type: string
    sql: ${TABLE}.ancestor_nodes ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_date ;;
  }

  dimension: dcterms_creator {
    type: string
    sql: ${TABLE}.dcterms_creator ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: eng_nav_title {
    type: string
    sql: ${TABLE}.eng_nav_title ;;
  }

  dimension: hr_url {
    type: string
    sql: ${TABLE}.hr_url ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}.keywords ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: language_name {
    type: string
    sql: ${TABLE}.language_name ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_date ;;
  }

  dimension: nav_title {
    type: string
    sql: ${TABLE}.nav_title ;;
  }

  dimension: node_id {
    type: string
    sql: ${TABLE}.node_id ;;
  }

  dimension: page_type {
    type: string
    sql: ${TABLE}.page_type ;;
  }

  dimension: parent_node_id {
    type: string
    sql: ${TABLE}.parent_node_id ;;
  }

  dimension_group: published {
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
    sql: ${TABLE}.published_date ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }

  dimension: sitekey {
    type: string
    sql: ${TABLE}.sitekey ;;
  }

  dimension: synonyms {
    type: string
    sql: ${TABLE}.synonyms ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_date ;;
  }

  measure: count {
    type: count
    drill_fields: [language_name]
  }
}
