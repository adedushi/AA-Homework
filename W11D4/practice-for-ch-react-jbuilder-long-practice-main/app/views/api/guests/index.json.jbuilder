json.array! @guests.map do |guest|
    json.extract! guest, :name, :age, :favorite_color if guest.age > 39 && guest.age < 51
end
