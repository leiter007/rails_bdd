Given("I visit the sign_in page") do
  visit new_user_session_path
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end
  
Given("the following articles exists") do |table|
  table.hashes.each do |article|
    FactoryBot.create(:article, article)
  end
end

When("I click {string} link") do |link|
  click_link link
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end
    
When("I click {string} button") do |string|
  click_button string
end


# When("I click OK in popup") do
#   page.accept_confirm "Are you sure?"
#   click_button('delete')
# end

