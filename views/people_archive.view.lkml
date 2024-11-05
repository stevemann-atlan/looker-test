# The name of this view in Looker is "People Archive"
view: people_archive {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: Application.People_Archive ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Custom Fields" in Explore.

  dimension: custom_fields {
    type: string
    sql: ${TABLE}.CustomFields ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EmailAddress ;;
  }

  dimension: fax_number {
    type: string
    sql: ${TABLE}.FaxNumber ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FullName ;;
  }

  dimension: hashed_password {
    type: string
    sql: ${TABLE}.HashedPassword ;;
  }

  dimension: is_employee {
    type: string
    sql: ${TABLE}.IsEmployee ;;
  }

  dimension: is_external_logon_provider {
    type: string
    sql: ${TABLE}.IsExternalLogonProvider ;;
  }

  dimension: is_permitted_to_logon {
    type: string
    sql: ${TABLE}.IsPermittedToLogon ;;
  }

  dimension: is_salesperson {
    type: string
    sql: ${TABLE}.IsSalesperson ;;
  }

  dimension: is_system_user {
    type: string
    sql: ${TABLE}.IsSystemUser ;;
  }

  dimension: last_edited_by {
    type: number
    sql: ${TABLE}.LastEditedBy ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_last_edited_by {
    type: sum
    sql: ${last_edited_by} ;;  }
  measure: average_last_edited_by {
    type: average
    sql: ${last_edited_by} ;;  }

  dimension: logon_name {
    type: string
    sql: ${TABLE}.LogonName ;;
  }

  dimension: other_languages {
    type: string
    sql: ${TABLE}.OtherLanguages ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.PersonID ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.PhoneNumber ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}.Photo ;;
  }

  dimension: preferred_name {
    type: string
    sql: ${TABLE}.PreferredName ;;
  }

  dimension: search_name {
    type: string
    sql: ${TABLE}.SearchName ;;
  }

  dimension: user_preferences {
    type: string
    sql: ${TABLE}.UserPreferences ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: valid_from {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ValidFrom ;;
  }

  dimension_group: valid_to {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ValidTo ;;
  }
  measure: count {
    type: count
    drill_fields: [full_name, preferred_name, search_name, logon_name]
  }
}
