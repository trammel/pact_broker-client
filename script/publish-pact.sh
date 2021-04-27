# bundle exec bin/pact-broker create-or-update-webhook http://localhost:9393 \
#   --uuid d40f38c3-aaa3-47f5-9161-95c07bc16b14 \
#   --request POST \
#   --description "foo webhook" \
#   --contract-published

bundle exec bin/pact-broker create-or-update-webhook http://localhost:9393 \
  --uuid d40f38c3-aaa3-47f5-9161-95c07bc16555 \
  --provider Bar \
  --request POST \
  --contract-published

bundle exec bin/pact-broker publish spec/pacts/pact_broker_client-pact_broker.json spec/pacts/foo-bar.json \
  --consumer-app-version 1.2.12 \
  --broker-base-url http://localhost:9292 \
   --broker-username localhost --broker-password localhost \
    --auto-detect-version-properties \
    --build-url http://mybuild \
    --branch master --tag foo5

