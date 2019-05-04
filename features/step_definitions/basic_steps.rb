Given("I visit the sign_in page") do
  visit new_user_session_path
end

When("I click {string} link") do |link|
  click_link link
end

# When("I click {string} link for {string}") do |link, article_title|
#   within(:xpath, "/table/tr[contains(.,'#{article_title}')]") do
#     click_link(link)
#   end
# end

# When("I click {string} link within article table") do |link|
#   within_table('articles') do
#     click_link link
#   end
# end

When("I click Edit link for {string}") do |article_title|
  article_id = Article.find_by(title: article_title)
  visit edit_article_path(article_id)
end

When("I click Show link for {string}") do |article_title|
  article_id = Article.find_by(title: article_title)
  visit article_path(article_id)
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end
    
When("I click {string} button") do |string|
  click_button string
end

