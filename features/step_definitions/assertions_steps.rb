Then("I should be on landing page") do
	visit root_path
end

Then("I should be on sign_in page") do
	visit new_user_session_path
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should not see {string}") do |content|
  expect(page).should have_no_content content
end

Then("I should be on {string} page") do |article_title|
    article_id = Article.find_by(title: article_title)
    visit article_path(article_id)
end

Then("I should be on the Edit page of {string}") do |article_title|
  article_id = Article.find_by(title: article_title)
  visit edit_article_path(article_id)
end
