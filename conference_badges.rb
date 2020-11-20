
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
    new_array = []
    name_array.each do |attendees|
        new_array << badge_maker(attendees)
    end
    return new_array
end

def assign_rooms(new_array)
    room_array = []
    new_array.each_with_index do |name, index|
        room_array << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end
    return room_array
end

def printer(attendees)
    batch_badge_creator(attendees).each do |name|
        puts name
    end
    assign_rooms(attendees).each do |rooms|
        puts rooms
    end
end