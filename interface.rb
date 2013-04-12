require_relative 'flashcard'
require_relative 'reader_writer'


class Interface

  def initialize(filename)
    @all_flashcards =[]
    load(filename)
  end

  def load(filename)
    ReaderWriter.read(filename) # returns an array of objects (the actual flashcards)
  end

  def guess
    
  end

  def validate

  end

  def shuffle
    
  end

end
