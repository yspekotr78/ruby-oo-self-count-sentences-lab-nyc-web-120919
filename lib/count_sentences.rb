require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences 
      new_array = self.split(/[.?!]/).reject {|string| string.empty?}
      return new_array.length
  end
 
  end
  # "This, well, is a sentence. This is too!! And so is this, I think? Woo..."`

  # "This, well, is a sentence. "
  # "This is too!! "
  # "And so is this, I think? "
  # "Woo..."