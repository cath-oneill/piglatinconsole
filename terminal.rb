require 'piglatin'

class PigLatinClient
  def self.start
    puts "Hello! I speak igpay atinlay."
    PigLatinClient.translate
  end 

  def self.translate
    puts "Enter any english word to translate into Pig Latin."
    word = gets.chomp
    translated = PigLatin.translate(word)
    if translated == :error
      puts "This word is not a correct English word." 
    else
      puts "The translation of #{word} is #{translated}."
    end
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