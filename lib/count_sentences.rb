require 'pry'

class String

  def sentence?
    if self[-1]=="."
     true
    else
     false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
  end
end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    count_arr=self.split(/[.!?]/)
    check_arr=[]
    count_arr.map {|index| if index.match(/[a-z]/)
    check_arr << index 
  end}
  check_arr.length
  end
end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences

