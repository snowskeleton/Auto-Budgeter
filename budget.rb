#!/bin/ruby

class Budget
@@all_budgets
@@working_budget = nil

    def self.which_budget
        @@all_budgets = YNABAPI.get_budgets

        Misc.show_list(@@all_budgets)

        @@working_budget = @@all_budgets[User_input.input_number("Select budget: ", @@all_budgets.count) -1]
        puts "You chose #{@@working_budget.name}"
    end
end
