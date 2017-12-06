Given(/^Voy al Sitio$/) do
  visit '/'
end

Then(/^Veo "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

When(/^Tirar Dado$/) do
  click_button("Tirar Dado")
end

Then(/^Veo en campo resultado "(.*?)"$/) do |resultado|
  last_response.body.should =~ /#{resultado}/m
end


