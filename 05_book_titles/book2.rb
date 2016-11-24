class Book2
  attr_accessor :title

  def title

    lower_words = %w(and in the of but a an)

    @title.capitalize.split.map { |word| lower_words.include?(word) ? word : word.capitalize }.join(' ')

  end

end