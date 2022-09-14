# frozen_string_literal: false

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(argument, dictionary)
  str = argument.downcase
  result = Hash.new(0)
  dictionary.each do |word|
    match = str.scan(word).length
    result[word] = match unless match.zero?
  end
  result
end

substrings('hellow world hello ali', dictionary)
