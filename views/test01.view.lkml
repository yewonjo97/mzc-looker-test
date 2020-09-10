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
    sql: ${TABLE}.homepageurl;;
    html: <img src="https://logo-core.clearbit.com/{{value}}" /> ;;
  }

  dimension: dynamic_image {
    type: string
    sql: ${name};;
    html:
        {% if name._value == docker %}
        <img src="https://logo-core.clearbit.com/http://docker.io">
        {% elsif name._value == autodesk %}
        <img src="https://logo-core.clearbit.com/http://www.autodesk.com">
        {% elsif name._value == cigna %}
        <img src="https://logo-core.clearbit.com/http://www.cigna.com">
        {% elsif name._value == heroku %}
        <img src="https://logo-core.clearbit.com/http://www.heroku.com">
        {% else %}
        <img src="https://logo-core.clearbit.com/http://www.hubspot.com">
        {%endif%}
      ;;
  }

}
