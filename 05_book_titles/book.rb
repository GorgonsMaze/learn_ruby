class Book

  attr_accessor :title

  def title
    lower_words = ['and', 'in', 'the', 'of', 'but', 'a', 'an']

    str = @title.split

    str.each do |word|
      if lower_words.include?(str[0])
        word.capitalize!
      end
      if lower_words.include?(word)
        word
      else
        word.capitalize!
      end

    end

    str.join(' ')

  end

end