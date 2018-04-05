class Response < ApplicationRecord

  belongs_to :respondent,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id

  belongs_to :answer_choice,
    class_name: "AnswerChoice",
    foreign_key: :answer_id,
    primary_key: :id

  has_one :question,
    through: :answer_choice,
    source: :question

  def self.sibling_responses
    Response.joins(:questions).where(:)
  end


end
