#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"

  curl --include --request DELETE https://nacho-favorite-api.herokuapp.com/sign-out/6 \
    --header "Authorization: Token token=$TOKEN"
