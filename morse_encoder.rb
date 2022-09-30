@morse_code_dic = {

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

  '--..' => 'Z',

  '-----' => '0',

  '.----' => '1',

  '..---' => '2',

  '...--' => '3',

  '....-' => '4',

  '.....' => '5',

  '-....' => '6',

  '--...' => '7',

  '---..' => '8',

  '----.' => '9'

}

def morse_char_decode(char)
  @morse_code_dic[char]
end

def morse_word_decode(word)
  word_split = word.split

  word_result = word_split.map { |char| morse_char_decode(char) }

  word_result.join
end

def morse_sentence_decode(sentence)
  sentence_aplit = sentence.split('   ')
  sentence_result = sentence_aplit.map { |word| morse_word_decode(word) }
  sentence_result.join(' ')
end

print morse_sentence_decode('-- -.--   -. .- -- .   .. ...   -.-- .- -.-- -. . .-.') # displays MY NAME IS YAYNER
