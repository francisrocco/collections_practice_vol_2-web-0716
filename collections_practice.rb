def begins_with_r(array)
  array.each do |string|
    return false unless string[0].downcase == "r"
  end
  true
end

def contain_a(array)
  a_strings = []
  array.each do |string|
    a_strings << string if string.include?("a")
  end
  a_strings
end

def first_wa(array)
  array.each do |string|
    return string if string[0..1].downcase == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if { |element| element.class != String}
end

def count_elements(array)
  counts = [ ]
  array.each do |names_hash|
    in_place = counts.find { |name| name[:name] == names_hash[:name] }
    if in_place != nil
      in_place[:count] += 1
    else
      counts << {:name => names_hash[:name], :count => 1}
    end
  end
  counts
end

def merge_data(keys, values)
  container = [ ]
  keys.each do |names_hashes|
    name = names_hashes[:first_name]
    values.each do |data|
      if data[name]
        merged_person = data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  cool_array = []
  array.each do |people_hash|
    cool_array << people_hash if people_hash[:temperature] == "cool"
  end
  cool_array
end

def organize_schools(schools_hash)
  organized_hash = {}
  schools_hash.each do |school, location|
    location.each do |_key, city|
      if organized_hash.has_key?(city)
        organized_hash[city] << school
      else
        organized_hash[city] = []
        organized_hash[city] << school
      end
    end
  end
  organized_hash
end
