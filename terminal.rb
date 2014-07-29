require 'piglatin'

class PigLatinClient
  def self.start
    puts "Hello! I speak igpay atinlay."
    PigLatinClient.translate
  end 

  def self.translate
    puts "Type any english word to translate into Pig Latin."
    word = gets.chomp
    translated = PigLatin.translate(word)
    puts "The translation of #{word} is #{translated}."
    PigLatinClient.another_word?
  end

  def self.another_word?
    puts "Would you like to translate another word? (yes/no)"
    answer = gets.chomp
    if answer[0].downcase == "y"
      PigLatinClient.translate
    else
      puts "Goodbye and good luck."
    end
  end
end

PigLatinClient.start