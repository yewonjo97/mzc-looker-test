view: test01 {
  sql_table_name: `test01.yewon_test`
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
