# The connection will be defined in the destination project
connection: "redshift_pacific_time"

# include all the views
include: "/Views/**/*.view"

datagroup: cmslite_metadata_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cmslite_metadata_default_datagroup

explore: audiences {}

explore: content_types {}

explore: creators {}

explore: dcterms_languages {}

explore: dcterms_subjects {}

explore: mbcterms_subject_categories {}

explore: metadata {}

explore: metadata_audiences {}

explore: metadata_content_types {}

explore: metadata_creators {}

explore: metadata_languages {}

explore: metadata_subject_categories {}

explore: metadata_subjects {}

explore: microservice_log {}

explore: themes {}

# hidden themes_cache explore supports suggest_explore for theme, subtheme, topic, etc. filters
explore: themes_cache {
 hidden: yes
}
