class TimelinesController < ApplicationController
  def index
    # displays the mass timeline
    @posts = Post.not_reply.where(user_id: [
      current_user.id,
      *current_user.followings.pluck(:id)
    ]).includes(postable: [:place]).order("created_at DESC")
  end

  def show
    # displays the personal timeline
  end
end
