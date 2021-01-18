def oxford_comma(array)
    # ["a", "b", "c"].join => "abc"
    # ["a", "b", "c"].join(" ") => "a b c"
    # ["a", "b", "c"].join(", ") => "a, b, c"
    if array.length == 1 # ["a"]
        return array[0] # => "a"
    elsif array.length == 2  # ["a", "b"] => "a and b"
        return array.join(" and ")
    elsif array.length > 2
        # ["a", "b", "c"] => "a, b, and c"
        # ["a", "b", "c", "d"] => "a, b, c, and d"
        # ["a", "b", "c", "d", "e"] => "a, b, c, d, and e"
        last_element = array.pop # => "d"
        # array => ["a", "b", "c"]
        first_half = array.join(", ") # => "a, b, c"
        second_half = ", and #{last_element}" # => ", and d"
        return first_half + second_half
    end
end

# ? .each puts ", " ?
# ? .each puts "and " ?



# ? _index ?