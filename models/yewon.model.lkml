connection: "mzcdsc-team-200716"

# include all the views
include: "/views/**/*.view"

datagroup: yewon_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: yewon_default_datagroup

explore: bumblebee {}

explore: bumblebee_cost_top5_by_product {}

explore: bumblebee_data_trans_5 {}

explore: test_partition {
  join: test_partition__products {
    view_label: "Test Partition: Products"
    sql: LEFT JOIN UNNEST(${test_partition.products}) as test_partition__products ;;
    relationship: one_to_many
  }

  join: test_partition__geoip {
    view_label: "Test Partition: Geoip"
    sql: LEFT JOIN UNNEST([${test_partition.geoip}]) as test_partition__geoip ;;
    relationship: one_to_one
  }

  join: test_partition__geoip__location {
    view_label: "Test Partition: Geoip Location"
    sql: LEFT JOIN UNNEST([${test_partition__geoip.location}]) as test_partition__geoip__location ;;
    relationship: one_to_one
  }
}
