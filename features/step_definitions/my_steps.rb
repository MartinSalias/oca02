Given(/^Voy al Sitio$/) do
  visit '/'
end

Then(/^Veo "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end


