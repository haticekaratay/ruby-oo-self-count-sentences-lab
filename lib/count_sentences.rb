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
    word_count = 0
    self_array = self.split(/([?!.])/)
    self_array.each{|el|
      if el.length>1
        word_count += 1
      else
        word_count = word_count
      end
    }
    
    word_count
  end
end
puts  " "