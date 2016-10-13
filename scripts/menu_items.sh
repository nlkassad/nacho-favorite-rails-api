#!/bin/bash

ID=6
TOKEN=BAhJIiVkOTVhNGE0MzFiZDlmOTcyN2Y2OWRiMjQxZDcxNzdkOAY6BkVG--4eb20eda4d9a282306b62a9aa4354204bfe8ce3c

# index

curl --include --request GET https://nacho-favorite-api.herokuapp.com/menu_items
curl --include --request GET http://localhost:3000/menu_items
  # --header "Authorization: Token token=BAhJIiUzOWM5ZWYyZjczMmVjZmVkMjI1NTFmZTQxMGMyMTQ2MgY6BkVG--628f41ba878926f250ee564f1971db720380b77f"

# show

curl --include --request GET http://localhost:3000/menu_items/1
curl --include --request GET https://nacho-favorite-api.herokuapp.com/menu_items/1
  # --header "Authorization: Token token=$TOKEN"

# create

curl --include --request POST https://nacho-favorite-api.herokuapp.com/menu_items/1 \
curl --include --request POST http://localhost:3000/menu_items \
  --header "Content-Type: application/json" \
  --data '{
    "menu_item": {
      "restaurant_id": 1,
      "dish_id": 1,
    }
  }'

  # curl --include --request PATCH http://localhost:3000/appointments/1 \
  curl --include --request POST https://nacho-favorite-api.herokuapp.com/menu_items \
    --header "Content-Type: application/json" \
    --data '{
      "menu_item": {
        "restaurant_id": 1,
        "dish_id": 1,
      }
    }'


  curl --include --request POST https://nacho-favorite-api.herokuapp.com/menu_items/1 \
  curl --include --request POST http://localhost:3000/menu_items \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUzOWM5ZWYyZjczMmVjZmVkMjI1NTFmZTQxMGMyMTQ2MgY6BkVG--628f41ba878926f250ee564f1971db720380b77f" \
    --data '{
      "menu_item": {
        "restaurant_id": 1,
        "dish_id": 1,
      }
    }'

# update


# curl --include --request PATCH https://nacho-favorite-api.herokuapp.com/menu_items/1 \
curl --include --request PATCH http://localhost:3000/menu_items/8 \
  --header "Content-Type: application/json" \
  --data '{
    "menu_item": {
      "restaurant_id": 1,
    }
  }'

# curl --include --request PATCH http://localhost:3000/menu_items/1 \
  curl --include --request PATCH https://nacho-favorite-api.herokuapp.com/menu_items/1 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUzOWM5ZWYyZjczMmVjZmVkMjI1NTFmZTQxMGMyMTQ2MgY6BkVG--628f41ba878926f250ee564f1971db720380b77f" \
    --data '{
      "menu_item": {
        "restaurant_id": 1,
      }
    }'

# destroy

# curl --include --request DELETE http://localhost:3000/menu_items/1 \
curl --include --request DELETE https://nacho-favorite-api.herokuapp.com/menu_items/4 \
curl --include --request DELETE http://localhost:3000/menu_items/1 \
  --header "Content-Type: application/json"

# curl --include --request DELETE http://localhost:3000/menu_items/1 \
  curl --include --request DELETE https://nacho-favorite-api.herokuapp.com/menu_items/4 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUzOWM5ZWYyZjczMmVjZmVkMjI1NTFmZTQxMGMyMTQ2MgY6BkVG--628f41ba878926f250ee564f1971db720380b77f"
