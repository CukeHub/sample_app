When("I visit the landing page") do
  @browser.get(@domain)
end

When("I visit the About section") do
  @browser.first(link: 'About').click
end