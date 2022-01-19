MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(morse_char)
  MORSE_CODE[morse_char] if MORSE_CODE.key?(morse_char)
end

def decode_word(word)
  str = ''
  word.split.each do |char|
    str += decode_char(char)
  end
  str
end

def decode_msg(msg)
  message = ''
  msg.strip.tr('/', ' ').split.each do |element|
    message += decode_word(element)
  end
  message
end

puts(decode_char('.-'))
puts(decode_word('.- .- .- .-'))
puts(decode_msg('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'))
