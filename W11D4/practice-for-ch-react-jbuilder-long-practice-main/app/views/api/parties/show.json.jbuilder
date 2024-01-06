json.extract! @party, :name, :location
json.guests @party.guests do |guest|
    json.extract! guest, :name
    json.gifts guest.gifts.map {|gift| gift.title if gift.party_id == @party.id}.compact
end