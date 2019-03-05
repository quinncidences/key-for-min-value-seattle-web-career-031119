# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.length == 0
    nil
  else
    array = []
    name_hash.each do |name, num|
      array << num
    end
    low_number = array[0]
    array.each do |num|
      low_number = num if num < low_number
    end
    name_hash.each do |name, num|
      if low_number == num
        return name
      end
    end
  end
end
