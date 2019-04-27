Then("I should see {string}") do |content|
    expect(page).to have_content content
  end

Then("I should be on {string} page") do |article|
    # http://localhost:3000/articles/3 -> Need to be articles/id
    visit (`/articles/${article[id]}`)
  end