class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @my_question = params[:question]
    @answer = if @my_question == 'I am going to work'
                'Great!'
              elsif @my_question.ends_with?('?')
                'Silly question, get dressed and go to work!'
              else
                'I dont care, get dressed and go to work!'
              end
  end
end
