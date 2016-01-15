Given "I am on the home page" do
  visit root_path
end

Then /^I see "(.*?)"$/ do |content|
  expect(page).to have_content content
end
