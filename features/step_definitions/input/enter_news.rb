Given(/^I'm logged in as a registered administrator$/) do
    @user = User.create!({
     email: "admin@example.com", password: "123456", password_confirmation: "123456",
     reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 8,
     current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10",
     current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", roles_mask: 8,
     first_name: "Fistname", middle_name: "no-middle-name", last_name: "Lastname",
   })
   @user.save!
   visit new_user_session_path
   expect(page).to have_content('Log in')
   fill_in 'Email', with: @user.email
   fill_in 'Password', with: @user.password
   click_button 'Log in'
 end
 
 And(/^I click Enter News link$/) do
 	expect(page).to have_content('NEWS TO INFORM USERS')
 	click_link 'Enter News'
 end
 
 When(/^I type specific news and click PUBLISH$/) do
   fill_in 'news-body', with: 'Lean and Collaboration'
   click_button 'PUBLISH'	
 end
 
 Then(/^we will see News successfully published$/) do
 end