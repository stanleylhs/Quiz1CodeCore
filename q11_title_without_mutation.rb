  def titleize(str)
    result = ""
    result << str[0].upcase
    i = 1
    while (i < str.length) do
      if (str[i] == ' ') then
        # in, the, of, and, or, from
        if (str[i+1..i+2] == "in")
          result << " in"
          i += 3
        elsif (str[i+1..i+3] == "the")
          result << " the"
          i += 4
        elsif (str[i+1..i+2] == "of")
          result << " of"
          i += 3
        elsif (str[i+1..i+3] == "and")
          result << " and"
          i += 4
        elsif (str[i+1..i+2] == "or")
          result << " or"
          i += 3
        elsif (str[i+1..i+4] == "or")
          result << " from"
          i += 5
        else 
          result << " " + str[i+1].upcase
          i += 2
        end
      else
        result << str[i]
        i += 1
      end
    end 
    result
  end

string = "man of the wild"
p string
p titleize(string)
p string + ' string not mutated!'