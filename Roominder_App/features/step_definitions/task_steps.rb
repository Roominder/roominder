Given("I am on the home page") do
    visit root_path
  end
  
  When("I click on the {string} button") do |string|
    click_button string
  end
  When("I click on the {string} link") do |string|
    click_link string
  end
  
  Then("I should see the {string} page") do |string|
    expect(page).to have_content(string)
  end
  
  When("I enter {string} as {string}") do |string, value|
    fill_in string, :with => value, visible: false
  end
  
  
  