view: defined_security_groups {
  derived_table: {
    sql:SELECT mdg.node_id as node_id,
          dg.id AS id,
          dg.value AS value
          FROM cmslite.metadata_defined_security_groups mdg
          LEFT JOIN cmslite.defined_security_groups dg ON mdg.id = dg.id ;;
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
