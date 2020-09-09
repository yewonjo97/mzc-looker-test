view: test01 {
  sql_table_name: `yewon_test.test01`
    ;;


  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: homepageurl {
    type: string
    sql: ${TABLE}.homepageurl ;;
  }
  }
