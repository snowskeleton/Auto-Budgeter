#!/bin/ruby
require 'ynab'

access_token = File.read("access_token")
ynab_api = YNAB::API.new(access_token)

budget_response = ynab_api.budgets.get_budgets
budgets = budget_response.data.budgets

budgets.each do |budget|
  puts "Budget Name: #{budget.id}"
end
