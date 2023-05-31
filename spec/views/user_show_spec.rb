require 'rails_helper'
RSpec.feature 'User Show Page', type: :feature do
  let(:user) { User.create(name: 'John Doe', photo: 'jane.jpg', bio: 'Lorem ipsum') }
  scenario 'Displaying user information' do
    # Create sample posts for the user
    post1 = user.posts.create(title: 'Post 1', text: 'Post 1 content', comments_counter: 2, likes_counter: 5)
    post2 = user.posts.create(title: 'Post 2', text: 'Post 2 content', comments_counter: 3, likes_counter: 7)
    post3 = user.posts.create(title: 'Post 3', text: 'Post 3 content', comments_counter: 1, likes_counter: 2)
    # Visit the user show page
    visit user_path(user)