def caesar_cipher(text, key)
  result = ""
  text.each_char do |char|
    base = char.ord <= 90 ? 65 : 97
    if char.ord.between?(65, 90) or char.ord.between?(97, 122)
      rotation = (((char.ord - base) + key) % 26) + base
      result += rotation.chr
    else
      result += char
    end
  end
  puts result
end

caesar_cipher("attack at dawn.", 5)
