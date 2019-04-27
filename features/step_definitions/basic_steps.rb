Given("I visit the sign_in page") do
  visit new_user_session_path
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    User.create!(user)
  end
end
  
Given("the following articles exists") do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end
  
When("I visit the landing page") do
  visit root_path
end

When("I click {string} link") do |link|
  click_on link
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end
    
When("I click {string} button") do |string|
  click_button string
end

When("I click the Edit link for article {string}") do |id|
  visit edit_article_path(id)
end

When("I click the Show link for article {string}") do |id|
  visit article_path(id)
end

When("I click OK in popup") do
  page.accept_confirm "Are you sure?"
  click_button('delete')
end

