dictionary = [
  "below",
  "down",
  "go",
  "going",
  "horn",
  "how",
  "howdy",
  "it",
  "i",
  "low",
  "own",
  "part",
  "partner",
  "sit"
]

def substring(string, dictionary)
  string = string.downcase #convert all inputs to downcase
  result = Hash.new(0) #creates new hash the result will be displayed in
  dictionary.each do |input| #iterating through the dictionary
    match = string.scan(input).length #finds out if the string matches words in the dictionary
    result[input] = match unless match == 0 #print all forms of matches unless it's zero
  end
  result #returns theh hash
end

substring("Go down below", dictionary)