view: inherited_security_groups {
  derived_table: {
    sql:SELECT mig.node_id AS node_id,
          ig.id AS id,
          ig.value AS value
          FROM cmslite.metadata_inherited_security_groups mig
          LEFT JOIN cmslite.inherited_security_groups ig ON mig.id = ig.id ;;
  }

  dimension: node_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.node_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
  }
}
