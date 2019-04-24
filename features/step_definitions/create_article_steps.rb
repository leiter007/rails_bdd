Given("I visit the {string} page") do |string|
    visit root_path
  end

  When("I click {string} link") do |link|
    click_link(link)
  end

  When("I fill in {string} with {string}") do |input, string|
    fill_in input, with: string
  end
  
  When("I click {string} button") do |string|
    click_button(string)
  end
  
  Then("I should be on {string} page") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end