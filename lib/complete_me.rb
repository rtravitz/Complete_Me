require_relative 'node'
require 'pry'

class CompleteMe
  attr_accessor :root

  def initialize
    @root = Node.new
    @word_count = 0
  end

  def insert(word, node=@root)
    letters = word.chars
    letters.each_with_index do |letter, index|
      unless node.children.keys.include?(letter)
        node.children[letter] = Node.new
      end
      node = node.children[letter]
      if index == word.length - 1
        node.word = true
        @word_count += 1
      end
    end
  end

  def count
    @word_count
  end

end