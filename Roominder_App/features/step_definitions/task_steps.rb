code = ""

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
    fill_in string, :with => value
  end
  
  When("I visit the root page") do
    visit root_path
  end

#   When("I save the code") do
#     code = find(:class 'task-header').value
#     #code = code[18..22]
#     puts code
#   end
  
#   When("I enter {string} as code") do |string|
#     fill_in string, :with => code
#   end
  
  