# Write your code here.
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    attendee_list = []
    array.each_with_index {|attendee, idx| attendee_list[idx] = "Hello, my name is #{attendee}."}
    return attendee_list
end

def assign_rooms(array)
    room_list = []
    array.each_with_index do |attendee, idx| 
        room_list[idx] = "Hello, #{attendee}! You'll be assigned to room #{idx + 1}!"
    end
    return room_list
end

def printer(array)
    array.each_with_index do |attendee, idx|
        puts badge_maker(attendee)
    end
    room_array = assign_rooms(array)
    room_array.each {|badge| puts "#{badge}"}
end