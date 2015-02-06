class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates_presence_of :content, :question_id, :user_id

  def created_at
    created_at.strftime("%D %R")
  end

  def updated_at
    updated_at.strftime("%D %R")
  end
end
