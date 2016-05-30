class PagesController < ApplicationController
  def answer

    @query = params[:query]
    @answer = coach_answer_enhanced(@query)

  end

  def ask

  end


private

  def coach_answer(your_message)
    if @query.downcase == "i am going to work right now!"
      ''
    elsif @query.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)
    if answer != ""
      if @query.upcase == your_message
        "I can feel your motivation! #{answer}"
      else
        answer
      end
    else
      ""
    end
  end
end
