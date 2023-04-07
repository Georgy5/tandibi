require "rails_helper"

feature "Posting" do
  given(:user) { create(:user) }
  given(:status_text) { "Woohoo!" }

  def sign_in(user)
    visit new_user_session_path
    fill_in "Username / Email",	with: user.username
    fill_in "Password",	with: user.password  
  end

  scenario "Posting a status" do
    sign_in user

    expect {
      fill_in "post_status_text",	with: status_text
      click_on "Say"
    }.to change { user.reload.posts.count }.from(0).to(1)

    posted_status = user.posts.first.postable
    expect(posted_status.text).to eq status_text
    expect(page).to have_content status_text

    within(".line .content") do
      expect(page).not_to have_selector("img")
    end
  end
end