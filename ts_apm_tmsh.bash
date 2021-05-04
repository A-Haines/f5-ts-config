# Create the APM logging
tmsh create apm log-setting telemetry access replace-all-with { access { publisher telemetry_publisher } }
# Assign to Virtual Server
tmsh modify ltm virtual <VIRTUAL_SERVER_NAME> profiles add { telemetry { context all } }