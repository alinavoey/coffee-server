#!/bin/bash

PRICE="10.99"
NAME="Alina" 
EMAIL="alina@test.com" 
DRINKS='{"drinkType": "coffee", "milk": "oat", "sugarLevel": "25", "size": "small"}, {"drinkType": "latte", "milk": "almond", "sugarLevel": "25", "size": "small"}'
OWNER="6288eed4c7c75829baf6bce6" 
TOKEN="23da97bc883444704cc357758923f5d7" 


API="http://localhost:4741"
URL_PATH="/orders"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
