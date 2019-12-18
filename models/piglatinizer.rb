class PigLatinizer

  def piglatinize(text)
    return text if %w[and an in].include?(text)
    letters = text.split("")
    letters.keep_if {|letter| letter != "."}

    if letters.size > 1
      until vowel?(letters[0])
        letters << letters.shift
      end
      letters << "ay"
    elsif letters.first.scan(/[aeiou]/)
      letters << "way"
    end

    letters.join()
  end

  def toPigLatin(text)
    words = text.split(" ")
    words.map!{|word| piglatinize(word)}
    words.join(" ")
  end

  def vowel?(text)
    vowels = 'aeiouAEIOU'
    vowels.include?(word[0])
  end
end
