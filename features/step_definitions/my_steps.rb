Given(/^Voy al Sitio$/) do
  visit '/'
end

Then(/^Veo "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

When(/^Tiro el Dado$/) do
  click_button("TiraDado")
end

Then(/^Veo en campo resultado "(.*?)"$/) do |valor|
  last_response.body.should =~ /#{valor}/m
end

When(/^Voy a pagina pantallajuego$/) do
  visit '/jugar'
end

When(/^Me Planto$/) do
  click_button("Plantarse")
end





