# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pile.create!(name: "Deck", private_pile: true, creator: nil)
Card.create([{name: "Ace of Spades", pile_id: 1},
             {name: "Two of Spades", pile_id: 1},
             {name: "Three of Spades", pile_id: 1},
             {name: "Four of Spades", pile_id: 1},
             {name: "Five of Spades", pile_id: 1},
             {name: "Six of Spades", pile_id: 1},
             {name: "Seven of Spades", pile_id: 1},
             {name: "Eight of Spades", pile_id: 1},
             {name: "Nine of Spades", pile_id: 1},
             {name: "Ten of Spades", pile_id: 1},
             {name: "Jack of Spades", pile_id: 1},
             {name: "Queen of Spades", pile_id: 1},
             {name: "King of Spades", pile_id: 1},
             {name: "Ace of Hearts", pile_id: 1},
             {name: "Two of Hearts", pile_id: 1},
             {name: "Three of Hearts", pile_id: 1},
             {name: "Four of Hearts", pile_id: 1},
             {name: "Five of Hearts", pile_id: 1},
             {name: "Six of Hearts", pile_id: 1},
             {name: "Seven of Hearts", pile_id: 1},
             {name: "Eight of Hearts", pile_id: 1},
             {name: "Nine of Hearts", pile_id: 1},
             {name: "Ten of Hearts", pile_id: 1},
             {name: "Jack of Hearts", pile_id: 1},
             {name: "Queen of Hearts", pile_id: 1},
             {name: "King of Hearts", pile_id: 1},
             {name: "Ace of Clubs", pile_id: 1},
             {name: "Two of Clubs", pile_id: 1},
             {name: "Three of Clubs", pile_id: 1},
             {name: "Four of Clubs", pile_id: 1},
             {name: "Five of Clubs", pile_id: 1},
             {name: "Six of Clubs", pile_id: 1},
             {name: "Seven of Clubs", pile_id: 1},
             {name: "Eight of Clubs", pile_id: 1},
             {name: "Nine of Clubs", pile_id: 1},
             {name: "Ten of Clubs", pile_id: 1},
             {name: "Jack of Clubs", pile_id: 1},
             {name: "Queen of Clubs", pile_id: 1},
             {name: "King of Clubs", pile_id: 1},
             {name: "Ace of Diamonds", pile_id: 1},
             {name: "Two of Diamonds", pile_id: 1},
             {name: "Three of Diamonds", pile_id: 1},
             {name: "Four of Diamonds", pile_id: 1},
             {name: "Five of Diamonds", pile_id: 1},
             {name: "Six of Diamonds", pile_id: 1},
             {name: "Seven of Diamonds", pile_id: 1},
             {name: "Eight of Diamonds", pile_id: 1},
             {name: "Nine of Diamonds", pile_id: 1},
             {name: "Ten of Diamonds", pile_id: 1},
             {name: "Jack of Diamonds", pile_id: 1},
             {name: "Queen of Diamonds", pile_id: 1},
             {name: "King of Diamonds", pile_id: 1}
])
