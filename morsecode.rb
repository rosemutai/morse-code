def decode_str(str)
  morse_characters = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
    '----.' => '9', '-----' => '0', ' ' => ' '
  }
  morse_characters[str]
end

def decode_word(word_str)
  str = ''
  word_array = word_str.split
  word_array.each do |char|
    str += decode_str(char)
  end
  str
end

def decode_entire_message(message)
  sentence = ''
  words_arr = message.split(/   /)
  words_arr.each { |char| sentence += "#{decode_word(char)} " }
  sentence
end
