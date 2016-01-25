module HelperMethods
  def titleize(str)
    words = str.split.each do |word|
      word.capitalize! if (word != "in") && (word != "the") && (word != "of") && (word != "and") && (word != "or") && (word != "from")
    end
    words.join(" ");
  end
end

# p titleize("I am in the top of the world.") 