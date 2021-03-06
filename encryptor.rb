class Encryptor
  def cipher
    {
      'a' => 'n',
      'b' => 'o',
      'c' => 'p',
      'd' => 'q',
      'e' => 'r',
      'f' => 's',
      'g' => 't',
      'h' => 'u',
      'i' => 'v',
      'j' => 'w',
      'k' => 'x',
      'l' => 'y',
      'm' => 'z',
      'n' => 'a',
      'o' => 'b',
      'p' => 'c',
      'q' => 'd',
      'r' => 'e',
      's' => 'f',
      't' => 'g',
      'u' => 'h',
      'v' => 'i',
      'w' => 'j',
      'x' => 'k',
      'y' => 'l',
      'z' => 'm'
    }
  end

  def encrypt_letter(letter)
    lowercase_letter = letter.downcase
    cipher[lowercase_letter]
  end

  def encrypt(string)
    # 1. cut the string into letters
    letters = string.split("")
    # 2. encrypt those letters one at a time
    # results = []
    # letters.each do |letter|
    #   encrypted_letter = encrypt_letter(letter)
    #   results.push(encrypted_letter)
    # end
    # REFACTORING
    results = letters.collect do |l|
                encrypt_letter(l)
              end
    # 3. join the results back together in one string
    results.join()
  end

  def decrypt_letter(letter)
    lowercase_letter = letter.downcase
    encrypt_letter(lowercase_letter)
  end

  def decrypt(string)
    encrypt(string)
  end
end
