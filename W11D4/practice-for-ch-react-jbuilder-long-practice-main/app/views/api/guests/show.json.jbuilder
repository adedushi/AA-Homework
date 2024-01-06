json.name @guest.name
json.age @guest.age
json.favorite_color @guest.favorite_color
# json.gifts @guest.gifts do |gift|
#     gift.title
json.gift @guest.gifts do |gift|
    json.title gift.title
    json.description gift.description
    json.party gift.party.name
end
# end