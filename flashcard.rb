class Flashcard
attr_accessor :question, :answer

  def initilize(card)
    @question = card[0]
    @answer = card[1]
  end
end