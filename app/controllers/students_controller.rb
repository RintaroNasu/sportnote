class StudentsController < ApplicationController
    def show
        @student = Student.find(params[:id])
        @days=@student.tweets.pluck(:created_at).map{|d|d.strftime("%Y-%m-%d")}.uniq
        @tweets = @student.tweets
    end
end
