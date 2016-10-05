## Nacho Favorite Rails API

A project build with the GA `rails-api` template. Includes authentication.

## Back End API for Nacho Favorite app

This is the back end API for the Nacho Favorite app. It is
build with Ruby on Rails with a postgresql database.
It is intended for deployment onto heroku to be served.
User authentication is built-in.
Documentation is being upated to reflect changes in functionality.

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |



### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |

### Reviews

| Verb | URI Pattern   | Controller#Action |
|------|---------------|-------------------|
| GET  | `/reviews`    | `reviews#index`     |
| GET  | `/reviews/1`  | `reviews#show`      |

### Menu Items

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/menu_items`    | `menu_items#index`     |
| GET  | `/menu_items/1`  | `menu_items#show`      |

### Dishes

| Verb | URI Pattern  | Controller#Action |
|------|--------------|-------------------|
| GET  | `/dishes`    | `dishes#index`     |
| GET  | `/dishes/1`  | `dishes#show`      |

### Restaurants

| Verb | URI Pattern       | Controller#Action |
|------|-------------------|-------------------|
| GET  | `/restaurants`    | `restaurants#index`     |
| GET  | `/restaurants/1`  | `restaurants#show`      |


## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
