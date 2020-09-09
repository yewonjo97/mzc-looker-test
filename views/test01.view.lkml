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

  dimension: looker_image {
    type: string
    sql: ${TABLE}.homepage_url;;
    html: <img src="https://logo-core.clearbit.com/{{value}}" /> ;;
  }

}
