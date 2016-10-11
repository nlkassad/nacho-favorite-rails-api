#!/bin/bash

# index

curl --include --request GET https://nacho-favorite-api.herokuapp.com/reviews
curl --include --request GET https://localhost:3000/reviews \
  # --header "Authorization: Token token=$TOKEN"

  curl --include --request GET http://localhost:3000/reviews/$ID \
    --header "Authorization: Token token=$TOKEN"

# show

curl --include --request GET http://localhost:3000/reviews/$ID \
  --header "Authorization: Token token=$TOKEN"

curl --include --request GET https://localhost:3000/reviews/1
curl --include --request GET https://nacho-favorite-api.herokuapp.com/reviews/1
  # --header "Authorization: Token token=$TOKEN"

# create

# curl --include --request PATCH http://localhost:3000/reviews/1 \

curl --include --request POST https://nacho-favorite-api.herokuapp.com/reviews \
curl --include --request PATCH http://localhost:3000/reviews/1 \
  --header "Content-Type: application/json" \
  --data '{
    "review": {
      "user_id": 1,
      "menu_item_id": 1,
      "rating": 1,
      "note": "So much test!"
    }
  }'

  # curl --include --request PATCH http://localhost:3000/appointments/1 \
  curl --include --request POST https://nacho-favorite-api.herokuapp.com/reviews \
    --header "Content-Type: application/json" \
    --data '{
      "review": {
        "user_id": 1,
        "menu_item_id": 1,
        "rating": 1,
        "note": "The most test around!"
      }
    }'

    curl --include --request PATCH http://localhost:3000/reviews/$ID \
      --header "Content-Type: application/json" \
      --header "Authorization: Token token=$TOKEN" \
      --data '{
        "review": {
          "note": "tacossss"
        }
      }'

# update

# curl --include --request PATCH http://localhost:3000/reviews/1 \
curl --include --request PATCH https://nacho-favorite-api.herokuapp.com/reviews/1 \
  --header "Content-Type: application/json" \
  --data '{
    "review": {
      "note": "Fantastic new testy!"
    }
  }'

# destroy

curl --include --request DELETE https://nacho-favorite-api.herokuapp.com/reviews/4 \
  --header "Content-Type: application/json"
  }'
