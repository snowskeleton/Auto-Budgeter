#!/bin/ruby

require 'ynab'
require 'sqlite3'
require_relative 'user_input.rb'
require_relative 'budget.rb'
require_relative 'ynab.rb'
require_relative 'misc.rb'





YNABAPI.prereqs()
Budget.which_budget()
