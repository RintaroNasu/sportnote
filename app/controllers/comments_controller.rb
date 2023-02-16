class CommentsController < ApplicationController
    def create
        tweet = Tweet.find(params[:tweet_id])
        comment = tweet.comments.build(comment_params) #buildを使い、contentとtweet_idの二つを同時に代入
        comment.teacher_id = current_teacher.id
        comment.save!
        redirect_to request.referer
    end
    private
    def comment_params
        params.require(:comment).permit(:content, :student_id)
    end
end
