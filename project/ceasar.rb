# Razvan Rotundu 2024
# Ceasar cyper simulator, takes string and shift amount

def ceasar(in_string, shift = 0)
  letter_set = Set["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "x", "y", "z"]

  for i in 0...in_string.length
    character = in_string[i]
    if letter_set.include?(character.downcase)
      in_string[i] = shift_function(character, shift)
    end
  end
  in_string
end

def shift_function(in_char, amount)
  out = in_char.upcase.ord 
  out += amount
  if out > 90
    out = out%90 + 64
  elsif out < 65
    out = 90 - (65 - out)
  end
  out = out.chr
  if in_char == in_char.upcase
    return out
  end
  return out.downcase
end
