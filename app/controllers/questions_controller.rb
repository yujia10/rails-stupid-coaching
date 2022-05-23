class QuestionsController < ApplicationController
  def ask
    if params[:question] == 'I am going to work'
      'Great!'
    elsif params[:question] && (params[:question].include? '?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def answer
    @answer = ask
    @question = params[:question]
  end
end
