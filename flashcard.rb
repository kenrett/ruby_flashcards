class Flashcard
  attr_accessor :question, :answer

  def initialize(card)
    @question, @answer = card
  end
end