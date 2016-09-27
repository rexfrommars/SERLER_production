#Feature: Search For Empirical Evidence
  #As a registered user
  #I want to be able to search for empirical evidence on different methods based on different constraints
  #So that I can make informed decisions

Given(/^I'm on login page$/) do
  @user = User.create!({
    email: 'admin@admin.com',
    password: '12345678',
    password_confirmation: '12345678'
  })
  @user.save!
  visit new_user_session_path
  expect(page).to have_content('Log in')

  # fill_in 'Email', with: @user.email
  # fill_in 'Password', with: '12345678'
  # click_button 'Log in'
end

And(/^Input user account$/) do
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: '12345678'
end

When(/^I click login button$/) do
  click_button 'Log in' 
end

Then(/^I can login$/) do
  expect(page).to have_content('Welcome')
end
# Given(/^There are (\d+) papers in DB\$$/) do |arg1|
#   arg1.to_i.times do |i|
#     paper = Paper.create!({
#       authors: "Bob#{i}",
#       title: "Test#{i}",
#       year: "200#{i}"
#     })
#     paper.save!
#   end
# end

# Given(/^I'm on search page$/) do
#   visit root_path
#   #pending # Write code here that turns the phrase above into concrete actions
#   expect(page).to have_button("Search")
# end

# When(/^I type specific keywords and click search button$/) do
#   fill_in 'search[search_fields_attributes][0][content]', with: 'Test'
#   click_button 'Search'
# end

# Then(/^I should get specific results$/) do
#   expect(page).to have_content('Paper')
#   expect(page).to have_content('Test')
# end
