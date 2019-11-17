class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @message = params['question']
    if @message.match(/[^.!?]+\?/)
      @answer = 'Silly question, get dressed and go to work!'
    elsif @message == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    return @answer
  end
end
