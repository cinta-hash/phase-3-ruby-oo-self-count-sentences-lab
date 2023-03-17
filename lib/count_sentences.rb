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
    counts = Hash[self.split(/[.!?]/).reject(&:empty?).map(&:strip).group_by(&:last).transform_values(&:count)]
  end
end