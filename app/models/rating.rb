# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  user_id    :integer
#  rating     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Rating < ActiveRecord::Base
  validates :rating, presence: true
  validates :rating, inclusion: { in: 0..9 }

  belongs_to :movie
  belongs_to :user
end