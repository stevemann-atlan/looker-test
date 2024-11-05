# Define the database connection to be used for this model.
connection: "testsmmssql"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: testrefinementssmdatagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: testrefinementssmdatagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Test-refinements-sm"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: authors {}

explore: books {}

explore: cities {}

explore: countries {}

explore: countries_archive {}

explore: delivery_methods {}

explore: delivery_methods_archive {}

explore: payment_methods {}

explore: payment_methods_archive {}

explore: people {}

explore: people_archive {}

explore: state_provinces {}

explore: transaction_types {}

explore: transaction_types_archive {}
