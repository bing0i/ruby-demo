def caesar_cipher(text, key)
  result = ""
  text.each_char do |char|
    # is lowercase or uppercase
    base = char.ord <= 90 ? 65 : 97
    # is letter
    if char.ord.between?(65, 90) or char.ord.between?(97, 122)
      rotation = (((char.ord - base) + key) % 26) + base
      result += rotation.chr
    # is other characters
    else
      result += char
    end
  end
  result
end

result = caesar_cipher("abcdefghi", 1)
puts result
result = caesar_cipher("abcdefghi", -1)
puts result
result = caesar_cipher("attack at dawn.", 5)
puts result
