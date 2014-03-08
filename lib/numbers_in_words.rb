def keyword_adder(array)
  array.each_with_index do |index, contents|
    if (index == 2 || index == 5 || index == 8 || index == 11) && contents != 0
      array.inject{|index| "hundred"}
    end
  end
  print array
end


def numbers_in_words(number, trillion=1000000000000, string="")
  hash_ones = {0 => "", 1 => " one", 2 => " two", 3 => " three", 4 => " four", 5 => " five", 6 => " six",
    7 => " seven", 8 => " eight", 9 => " nine"}
  hash_teens = {10 => " ten", 11 => " eleven", 12 => " twelve", 13 => " thirteen", 14 => " fourteen",
    15 => " fifteen", 16 => " sixteen", 17 => " seventeen", 18 => " eighteen", 19 => " nineteen"}
  hash_tens = {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty",
    7 => "seventy", 8 => "eighty", 9 => "ninety"}

  first_digit = number / trillion
  temp_string = string
  remainder = number % trillion
  result_array = []

    if number < 20 && number > 9
     temp_string += hash_teens[number]
     result_array = temp_string.split(" ")
     keyword_adder(result_array)
    elsif number <= 9
     temp_string += hash_ones[number]
     result_array = temp_string.split(" ")
     keyword_adder(result_array)
    else
     temp_string += hash_ones[first_digit]
     numbers_in_words(remainder, trillion / 10, temp_string)
    end
  end

numbers_in_words(345)

example_array = ["one", "two", "three", "four", "five", "six"]
# we want "one hundred twenty three thousand four hundred fifty six"

#reverse array
#[six, five, four , three, two, one]
# if 2nd index is not zero, add hundred
