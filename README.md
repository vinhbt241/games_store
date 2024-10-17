# README

## TEST SCRIPTS
```
# fields
{
  genres {
    id
    name
    description
  }
}

# alias
{
  FirstGenre: genre(id: "...") {
    name
    description
  }

  SecondGenre: genre(id: "...") {
    name
    description
  }
}

# fragments
{
  leftComparision: genre(id: "...") {
    ...comparisionFields
  }

  rightComparision: genre(id: "...") {
    ...comparisionFields
  }
}

fragment comparisionFields on Genre {
  name
  games {
    name
    releaseDate
  }
}

# variables
query GameAndGenre($gameId: ID!) {
  game(id: $gameId) {
    name
    releaseDate
    genre {
      name
    }
  }
}

# mutation
mutation {
  createGenre(input: {
    attributes: {
      name: "Detective",
      description: "Game where you solve cases"
    }
  }){
    genre {
      name
      description
    }
    errors
  }
}

mutation {
  updateGenre(input: {
    attributes: {
      id: "005ecee9-8b5f-4e75-bec3-b2d5cece6c18",
      description: "Game where you solve puzzle"
    }
  }) {
    genre {
      id
      name
      description
    }

    errors
  }
}

mutation {
  destroyGenre(input: {
    attributes: {
      id: "005ecee9-8b5f-4e75-bec3-b2d5cece6c18"
    }
  }) {
    genre {
      id
      name
      description
    }
    deletedId
  }
}

# using arguments with field
{
  genres {
    name
    games(from: "...") {
      name
      releaseDate
    }
  }
}

# See all games
# {
#   games {
#     id
#     name
#     releaseDate
#   }
# }

# See list of purchased game
# {
#   purchasedGames {
#     name
#     releaseDate
#   }
# }

# purchase game
# mutation {
#   purchaseCreate(input: {
#     purchaseInput: {
#       gameId: "92ec0054-a828-4f95-ae3e-a35ed0476231"
#     }
#   }) {
#     game {
#       name
#     }
#   }
# }

# login
# mutation {
#   sessionCreate(input: {
#     credentials: {
#       email: "test_user_1@gmail.com",
#       password: "123456"
#     }
#   }) {
#     token
#   }
# }

# logout
# mutation {
#   sessionDelete(input: {}) {
#     message
#   }
# }

# signup
# mutation {
#   userCreate(input: {
#     userInput: {
#       email: "test_user_1@gmail.com",
#       password: "123456"
#     }
#   }) {
#     user {
#       email
#     }
#   }
# }
```