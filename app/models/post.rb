class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  extend FriendlyId
 # friendly_id :name, use: :slugged   #change name into title
 # friendly_id :title, use: :slugged  #change as below after adding def slug_candidates
   friendly_id :slug_candidates, use: :slugged

 def slug_candidates
   [
     :title,
     [:title, :content],
    ]
 end

end
