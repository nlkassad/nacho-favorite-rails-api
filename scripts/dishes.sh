#!/bin/bash

ID=6
TOKEN=BAhJIiVkOTVhNGE0MzFiZDlmOTcyN2Y2OWRiMjQxZDcxNzdkOAY6BkVG--4eb20eda4d9a282306b62a9aa4354204bfe8ce3c

# index

curl --include --request GET https://nacho-favorite-api.herokuapp.com/dishes
curl --include --request GET http://localhost:3000/dishes
  # --header "Authorization: Token token=$TOKEN"

# show

curl --include --request GET http://localhost:3000/dishes/1
curl --include --request GET https://nacho-favorite-api.herokuapp.com/dishes/1
  # --header "Authorization: Token token=$TOKEN"

# create

curl --include --request POST https://nacho-favorite-api.herokuapp.com/dishes/1 \
curl --include --request POST http://localhost:3000/dishes \
  --header "Content-Type: application/json" \
  --data '{
    "dish": {
      "name": "Created dish without auth!"
    }
  }'

  # curl --include --request PATCH http://localhost:3000/dishes/1 \
  curl --include --request POST https://nacho-favorite-api.herokuapp.com/dishes \
    --header "Content-Type: application/json" \
    --data '{
      "dish": {
        "name": "The most test around!"
      }
    }'


  curl --include --request POST https://nacho-favorite-api.herokuapp.com/dishes/1 \
  curl --include --request POST http://localhost:3000/dishes \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUzOWM5ZWYyZjczMmVjZmVkMjI1NTFmZTQxMGMyMTQ2MgY6BkVG--628f41ba878926f250ee564f1971db720380b77f" \
    --data '{
      "dish": {
        "name": "Created dish with auth!"
      }
    }'

# update


# curl --include --request PATCH https://nacho-favorite-api.herokuapp.com/dishes/1 \
curl --include --request PATCH http://localhost:3000/dishes/8 \
  --header "Content-Type: application/json" \
  --data '{
    "dish": {
      "name": "Updated dish without auth!"
    }
  }'

# curl --include --request PATCH http://localhost:3000/dishes/1 \
  curl --include --request PATCH https://nacho-favorite-api.herokuapp.com/dishes/1 \
  curl --include --request PATCH http://localhost:3000/dishes/1 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUzOWM5ZWYyZjczMmVjZmVkMjI1NTFmZTQxMGMyMTQ2MgY6BkVG--628f41ba878926f250ee564f1971db720380b77f" \
    --data '{
      "dish": {
        "name": "Updated dish with auth!"
      }
    }'

# destroy

# curl --include --request DELETE http://localhost:3000/dishes/1 \
curl --include --request DELETE http://localhost:3000/dishes/1 \
curl --include --request DELETE https://nacho-favorite-api.herokuapp.com/dishes/4 \
curl --include --request DELETE http://localhost:3000/dishes/1 \
  --header "Content-Type: application/json"

# curl --include --request DELETE http://localhost:3000/dishes/1 \
  curl --include --request DELETE https://nacho-favorite-api.herokuapp.com/dishes/4 \
  curl --include --request DELETE http://localhost:3000/dishes/1 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUzOWM5ZWYyZjczMmVjZmVkMjI1NTFmZTQxMGMyMTQ2MgY6BkVG--628f41ba878926f250ee564f1971db720380b77f"
