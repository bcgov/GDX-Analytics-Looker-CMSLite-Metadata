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
    primary_key: yes
    type: string
    sql: ${TABLE}.node_id ;;
  }

  dimension: page_type {
    type: string
    sql: ${TABLE}.page_type ;;
  }

  dimension: folder_name {
    type: string
    sql: ${TABLE}.folder_name ;;
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

  measure: titles {
    type: list
    list_field: title
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

  dimension: page_status {
    type: string
    sql: ${TABLE}.page_status ;;
  }

  dimension: published_by {
    type: string
    sql: ${TABLE}.published_by ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension: node_level {
    type: string
    sql: ${TABLE}.node_level ;;
  }

  dimension_group: locked {
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
    sql: ${TABLE}.locked_date ;;
  }

  dimension_group: moved {
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
    sql: ${TABLE}.moved_date ;;
  }

  dimension: exclude_from_ia {
    type: string
    sql: ${TABLE}.exclude_from_ia ;;
  }

  dimension: hide_from_navigation {
    type: string
    sql: ${TABLE}.hide_from_navigation ;;
  }

  dimension: exclude_from_search_engines {
    type: string
    sql: ${TABLE}.exclude_from_search_engines ;;
  }

  dimension: security_classification {
    type: string
    sql: ${TABLE}.security_classification ;;
  }

  dimension: security_label {
    type: string
    sql: ${TABLE}.security_label ;;
  }

  dimension_group: publication {
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
    sql: ${TABLE}.publication_date ;;
    description: "These are nodes that have been mandated by legislation to have an official static publication date."
  }

  dimension: defined_security_groups {
    type: string
    sql: ${TABLE}.defined_security_groups ;;
  }

  dimension: inherited_security_groups {
    type: string
    sql: ${TABLE}.inherited_security_groups ;;
  }

  measure: count {
    type: count
    drill_fields: [title]
  }
}
