class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates_presence_of :title, :prompt, :user_id


  def edited_time
    if Time.now - self.updated_at < 60
      (Time.now.utc - self.updated_at).round(0).to_s + " seconds ago"
    elsif Time.now - self.updated_at > 60 && Time.now - self.updated_at < 3600
      ((Time.now.utc - self.updated_at).round(0)/60).to_s + " minutes ago"
    # minutes
    elsif Time.now.utc - self.updated_at > 3600 && Time.now - self.updated_at < 86400
      ((Time.now.utc - self.updated_at).round(0)/60/60).to_s + " hours ago"
    # hours
    else # days
      ((Time.now.utc - self.updated_at).round(0)/60/60/24).to_s + " days ago"
    end
  end


  def answered_time
    if Time.now - self.created_at < 60
      (Time.now.utc - self.created_at).round(0) + " seconds ago"
    elsif Time.now - self.created_at > 60 && Time.now - self.created_at < 3600
      ((Time.now.utc - self.created_at).round(0)/60).to_s + " minutes ago"
    # minutes
    elsif Time.now.utc - self.created_at > 3600 && Time.now - self.created_at < 86400
      ((Time.now.utc - self.created_at).round(0)/60/60).to_s + " hours ago"
    # hours
    else # days
      ((Time.now.utc - self.created_at).round(0)/60/60/24).to_s + " days ago"
    end
  end



end
