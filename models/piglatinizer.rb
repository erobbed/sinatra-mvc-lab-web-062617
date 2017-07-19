class PigLatinizer
  attr_accessor :word

  def to_pig_latin(text)
    text.split(" ").map{|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    # binding.pry
    if word.downcase[0].match(/[aeiou]/)!=nil
      word + "way"
    else
      n=0
      until word.downcase[n].match(/[aeiou]/)!=nil
        n+=1
      end
      word[n..-1] + word[0...n] + "ay"
    end
  end
end
