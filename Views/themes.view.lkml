view: themes {
  sql_table_name: cmslite.themes ;;
  drill_fields: [subtheme_id]


  # the COALESCSE expression ensures that a blank value is returned in the
  # case where the ${TABLE}.subtheme_id value is missing or null; ensurinig that
  # user attribute filters will continue to work.
  #
  # reference - https://docs.aws.amazon.com/redshift/latest/dg/r_NVL_function.html

  dimension: subtheme_id {
    primary_key: yes
    description: "The alphanumeric CMS Lite subtheme identifier."
    type: string
    sql:COALESCE(${TABLE}.subtheme_id,'') ;;
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
    drill_fields: [topic]
    sql: COALESCE(${TABLE}.subtheme, '(no subtheme)') ;;
    suggest_explore: themes_cache
    suggest_dimension: themes_cache.subtheme
  }

  dimension: theme {
    description: "The CMS Lite theme."
    type: string
    drill_fields: [subtheme, topic]
    sql: COALESCE(${TABLE}.theme, '(no theme)') ;;
    suggest_explore: themes_cache
    suggest_dimension: themes_cache.theme
  }

  dimension: theme_id {
    description: "The alphanumeric CMS Lite theme identifer."
    type: string
    sql: COALESCE(${TABLE}.theme_id,'') ;;
  }

  dimension: title {
    description: "The CMS Lite page title."
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
    sql: COALESCE(${TABLE}.topic, '(no topic)') ;;
    suggest_explore: themes_cache
    suggest_dimension: themes_cache.topic
  }

  dimension: bc_bid_guides_subtopic {
    description: "The CMS Lite topic."
    label: "Guides Category"
    type: string
    sql: CASE WHEN ${TABLE}.topic_id <> '77ACEDDA76064DED94930400EDD876BD' THEN NULL
          WHEN ${TABLE}.subtopic_id IN ('39ABFF0F9D044082A2DC94CE3CD0C5A6',
            '3C62FBAD49774604AC2165CE2C66858E','A9D1AC62146540F1AD11298C232BA5C4',
            '71389F47C62B4BBF99BA47A8FC2EEE53','DD3D51FD26D44AAABCA705C8B96FB387') THEN ${TABLE}.subtopic
            ELSE 'Other' END;;
    group_label: "BC Bid Dimensions"
  }

  dimension: full_tree_nodes {
    label: "Full Tree Nodes"
    type:  string
    sql:  ${TABLE}.full_tree_nodes ;;
    description: "List of nodes from Theme to NodeID "
  }

  dimension: topic_id {
    description: "The alphanumeric CMS Lite topic identifier."
    type: string
    sql: COALESCE(${TABLE}.topic_id,'') ;;
  }

  dimension: subtopic {
    description: "The CMS Lite subtopic."
    type: string
    sql: COALESCE(${TABLE}.subtopic, '(no subtopic)') ;;
    suggest_explore: themes_cache
    suggest_dimension: themes_cache.subtopic
  }

  dimension: subtopic_id {
    description: "The alphanumeric CMS Lite subtopic identifier."
    type: string
    sql: COALESCE(${TABLE}.subtopic_id,'') ;;
  }

  dimension: subsubtopic {
    description: "The CMS Lite subsubtopic."
    type: string
    sql: COALESCE(${TABLE}.subsubtopic, '(no subsubtopic)') ;;
    suggest_explore: themes_cache
    suggest_dimension: themes_cache.subsubtopic
  }

  dimension: subsubtopic_id {
    description: "The alphanumeric CMS Lite subsubtopic identifier."
    type: string
    sql: COALESCE(${TABLE}.subsubtopic_id,'') ;;
  }

  dimension: is_covid_page {
    type: yesno
    description: "Is this a COVID URL (COVID Theme, BC Recovery Plan, BC Recovery Benefit subtheme, 'covid' in URL"
    sql: CASE WHEN ${hr_url} ILIKE '%covid%'
        OR ${theme} = 'COVID-19'
        OR ${subtheme} ILIKE '%COVID%'
        THEN TRUE
      ELSE false END ;;
  }


  measure: count {
    type: count
    drill_fields: [subtheme_id, themes.subtheme_id, google_pdt.count, themes.count]
  }
}
