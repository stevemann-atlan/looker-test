# The name of this view in Looker is "Acs2017 State Data"
view: acs2017_state_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "US_CENSUS"."acs2017_state_data" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Asian" in Explore.

  dimension: asian {
    type: number
    sql: ${TABLE}."Asian" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_asian {
    type: sum
    sql: ${asian} ;;  }
  measure: average_asian {
    type: average
    sql: ${asian} ;;  }

  dimension: black {
    type: number
    sql: ${TABLE}."Black" ;;
  }

  dimension: carpool {
    type: number
    sql: ${TABLE}."Carpool" ;;
  }

  dimension: child_poverty {
    type: number
    sql: ${TABLE}."ChildPoverty" ;;
  }

  dimension: construction {
    type: number
    sql: ${TABLE}."Construction" ;;
  }

  dimension: drive {
    type: number
    sql: ${TABLE}."Drive" ;;
  }

  dimension: employed {
    type: number
    sql: ${TABLE}."Employed" ;;
  }

  dimension: family_work {
    type: number
    sql: ${TABLE}."FamilyWork" ;;
  }

  dimension: hispanic {
    type: number
    sql: ${TABLE}."Hispanic" ;;
  }

  dimension: income {
    type: number
    sql: ${TABLE}."Income" ;;
  }

  dimension: income_err {
    type: number
    sql: ${TABLE}."IncomeErr" ;;
  }

  dimension: income_per_cap {
    type: number
    sql: ${TABLE}."IncomePerCap" ;;
  }

  dimension: income_per_cap_err {
    type: number
    sql: ${TABLE}."IncomePerCapErr" ;;
  }

  dimension: mean_commute {
    type: number
    sql: ${TABLE}."MeanCommute" ;;
  }

  dimension: men {
    type: number
    sql: ${TABLE}."Men" ;;
  }

  dimension: native {
    type: number
    sql: ${TABLE}."Native" ;;
  }

  dimension: office {
    type: number
    sql: ${TABLE}."Office" ;;
  }

  dimension: other_transp {
    type: number
    sql: ${TABLE}."OtherTransp" ;;
  }

  dimension: pacific {
    type: number
    sql: ${TABLE}."Pacific" ;;
  }

  dimension: poverty {
    type: number
    sql: ${TABLE}."Poverty" ;;
  }

  dimension: private_work {
    type: number
    sql: ${TABLE}."PrivateWork" ;;
  }

  dimension: production {
    type: number
    sql: ${TABLE}."Production" ;;
  }

  dimension: professional {
    type: number
    sql: ${TABLE}."Professional" ;;
  }

  dimension: public_work {
    type: number
    sql: ${TABLE}."PublicWork" ;;
  }

  dimension: self_employed {
    type: number
    sql: ${TABLE}."SelfEmployed" ;;
  }

  dimension: service {
    type: number
    sql: ${TABLE}."Service" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."State" ;;
  }

  dimension: total_pop {
    type: number
    sql: ${TABLE}."TotalPop" ;;
  }

  dimension: transit {
    type: number
    sql: ${TABLE}."Transit" ;;
  }

  dimension: unemployment {
    type: number
    sql: ${TABLE}."Unemployment" ;;
  }

  dimension: voting_age_citizen {
    type: number
    sql: ${TABLE}."VotingAgeCitizen" ;;
  }

  dimension: walk {
    type: number
    sql: ${TABLE}."Walk" ;;
  }

  dimension: white {
    type: number
    sql: ${TABLE}."White" ;;
  }

  dimension: women {
    type: number
    sql: ${TABLE}."Women" ;;
  }

  dimension: work_at_home {
    type: number
    sql: ${TABLE}."WorkAtHome" ;;
  }
  measure: count {
    type: count
  }
}
