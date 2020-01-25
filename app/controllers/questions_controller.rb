class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question.include? 'work'
      @answer = 'Great'
    elsif @question.include? 'WORK'
      @answer = 'Great'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    @question
  end
end
