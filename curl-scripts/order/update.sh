#!/bin/bash

PRICE="12.99"
NAME="Dom" 
EMAIL="alina@test.com" 
DRINKS='{"drinkType": "coffee", "milk": "almond", "sugarLevel": "50", "size": "large"}'
ID="6288f34f9fab782ccf4a953e"
OWNER="6288eed4c7c75829baf6bce6" 
TOKEN="23da97bc883444704cc357758923f5d7" 

API="http://localhost:4741"
URL_PATH="/orders"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "order": {
      "price": "'"${PRICE}"'",
      "name": "'"${NAME}"'",
      "email": "'"${EMAIL}"'",
      "drinks": ['"${DRINKS}"'],
      "owner": "'"${OWNER}"'"
    }
  }'

echo
