class QuestionsController < ApplicationController
  def ask
    puts 'ROUTED'
  end

  def answer
    @question = params[:question]
    @answer = coach_responds_to @question
  end

  private

  def coach_responds_to(question)
    if question == 'I am going to work'
      'Great!'
    elsif question[-1] == '?'
      'Silly question, get dressed and go to work!'
    else
      'I don\'t care, get dressed and go to work!'
    end
  end
end
