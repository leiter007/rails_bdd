Then("I should be on landing page") do
    visit root_path
end

Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I should not see {string}") do |content|
  expect(page).should have_no_content content
end

Then("I should be on {string} page") do |article|
    # http://localhost:3000/articles/3 -> Need to be articles/id
    visit (`/articles/${article[id]}`)
end

Then("I should be on the {string} page of {string}") do |edit, article|
    visit (`/articles/${article[id]/edit}`)
end
