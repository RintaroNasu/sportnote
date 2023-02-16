class TweetsController < ApplicationController
    def index
        @tweet = Tweet.all
    end
    def new
        @tweet = Tweet.new
    end
    def create
        tweet = Tweet.new(tweet_params)
        tweet.student_id = current_student.id
        tweet.save!
        redirect_to student_path(current_student.id)
    end
    def show
        @tweet = current_teacher.tweets
        @tweet = @tweet.page(params[:page]).per(2)
    end
    def show2
        @tweets = current_student.tweets
    end
    private
    def tweet_params
        params.require(:tweet).permit(:body, :student_id, :start_time)
    end
end
