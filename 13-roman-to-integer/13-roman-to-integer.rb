# @param {String} s
# @return {Integer}
def roman_to_int(string)
     index = string.length - 1
  count = 0
  while index >= 0
    p index
    p  count
    if string[index] == "I"
      count += 1
      index -= 1
    elsif string[index] == "V"
      if string[index - 1] == "I" && index > 0
        count += 4
        index -= 2
      else
        count += 5
        index -= 1
      end
    elsif string[index] == "X"
      if string[index - 1] == "I" && index > 0
        count += 9
        index -= 2
      else
        count += 10
        index -= 1
      end
    elsif string[index] == "L"
      if string[index - 1] == "X" && index > 0
        count += 40
        index -= 2
      else
        count += 50
        index -= 1
      end
    elsif string[index] == "C"
      if string[index - 1] == "X" && index > 0
        count += 90
        index -= 2
      else
        count += 100
        index -= 1
      end
    elsif string[index] == "D"
      if string[index - 1] == "C" && index > 0
        count += 400
        index -= 2
      else
        count += 500
        index -= 1
      end
    elsif string[index] == "M"
      if string[index - 1] == "C" && index > 0
        count += 900
        index -= 2
      else
        count += 1000
        index -= 1
      end
    end
  end
  return count
end