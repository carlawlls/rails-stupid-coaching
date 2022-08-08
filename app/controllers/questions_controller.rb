class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    case @question
    when /\?$/ then @answer = 'Silly question, get dressed and go to work!'
    when 'I am going to work' then @answer = 'Great!'
    else @answer = "I don't care, get dressed and go to work!"
    end
  end
end
