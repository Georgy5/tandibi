# == Schema Information
#
# Table name: posts
#
#  id            :bigint           not null, primary key
#  postable_type :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  postable_id   :bigint           not null
#  thread_id     :bigint
#  user_id       :bigint
#
# Indexes
#
#  index_posts_on_postable  (postable_type,postable_id)
#
# Foreign Keys
#
#  fk_rails_...  (thread_id => posts.id)
#  fk_rails_...  (user_id => users.id)
#
class Post < ApplicationRecord
  belongs_to :postable, polymorphic: true
  belongs_to :user
  belongs_to :thread, class_name: "Post", optional: true
  has_many :pictures
  has_many :replies, class_name: "Post", foreign_key: :thread_id

  scope :not_reply, -> { where(thread_id: nil) }
  scope :written_by, -> (username) {
    poster = User.find_by_username(username)
    where(user: poster)
  }

  ## for the forms
  attr_accessor :status_text
end
