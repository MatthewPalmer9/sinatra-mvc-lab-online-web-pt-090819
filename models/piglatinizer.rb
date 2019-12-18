class PigLatinizer

  def toPigLatin(word)
    if self.vowel?(word)
      word.concat('way')
    else
      word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
    end
  end

  def piglatinize(text)
    words = text.split(" ")
    words.map!{|word| toPigLatin(word)}
    words.join(" ")
  end

  def vowel?(word)
    vowels = 'aeiouAEIOU'
    vowels.include?(word[0])
  end
end
