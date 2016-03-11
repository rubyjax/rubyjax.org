Given "I am on the home page" do
  visit root_path
end

Then /^I see "(.*?)"$/ do |content|
  expect(page).to have_content content
end

Given /^there are the following upcoming events:$/ do |events|
  events.hashes.each do |event|
    Fabricate(:event, event)
  end
end
