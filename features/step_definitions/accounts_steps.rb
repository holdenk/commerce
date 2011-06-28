module AccountsHelper
  def no_op
    # do nothing
  end
  
  def register_as(as="sandy")
    visit '/register'
    debugger
    1
  end
end
World(AccountsHelper)

Given /^I am logged out$/ do
  no_op
end

When /^I register$/ do
  register_as
end

Then /^I should have an account$/ do
  pending # express the regexp above with the code you wish you had
end
