#!/bin/bash

ID="6288f34f9fab782ccf4a953e"
TOKEN="23da97bc883444704cc357758923f5d7"

API="http://localhost:4741"
URL_PATH="/orders"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
