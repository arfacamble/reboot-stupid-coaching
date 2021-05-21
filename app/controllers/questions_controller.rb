class QuestionsController < ApplicationController
  def ask
    puts 'ROUTED'
  end

  def answer
    puts params
  end
end
