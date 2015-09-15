class PageController < ApplicationController
    def welcome
        puts "Hello world"
        @issues = Issue.all.reverse 
        @issues.each do |i|
            puts i.title
        end
    end
end
