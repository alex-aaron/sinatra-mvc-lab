class PigLatinizer

    def piglatinize_individual_word(word)
        if word[0].match(/[aeiouAEIOU]/)
            piglatin = word + "way"
        else
            word_array = word.split("")
            pig_latin_end = ""
            index = 0

            until word_array[index].match(/[aeiou]/)
                pig_latin_end += word_array[index]
                index += 1
            end

            word_array.shift(pig_latin_end.length)
            pig_latin = word_array.join("") + pig_latin_end + "ay"
        end
    end

    def piglatinize(text)
        text_array = text.split(" ")
        piglatin = text_array.map {|word| piglatinize_individual_word(word)}.join(" ")
    end


end