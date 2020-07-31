#!/bin/ruby

class User_input

    def self.yesno?(question)
        1.times do
            print question
            answer = gets.chomp
            case answer
            when "yes", "ye", "y", "eys", "yse"
                puts
                return true
            when "no", "on", "n", "non"
                puts
                return false
            else
                puts
                puts "Input not recognized.\n"
                redo
            end
        end
    end

    def self.input_number(question, max_num)
        1.times do
            print question
            input = gets.chomp

            if input =~ /^-?[0-9]+$/ && input.to_i <= max_num.to_i
                return input.to_i
            else
                puts "No card in that range. Please try again."
                redo
            end

        end
    end

end
