class TeachersController < ApplicationController
    def show
        @teachers = Teacher.all
        @teacher = Teacher.find(params[:id])
        @students = current_teacher.students
        @days = current_teacher.tweets.pluck(:created_at).map{|d|d.strftime("%Y-%m-%d")}.uniq
        # pluckメソッドは、一つのカラムを抜き出して配列として排出する。その後mapメソッドを使って配列を少し違うものに変える。最後にuniqメソッドで複数ある日付けを一つにする。
    end
    def destroy
        teacher = Teacher.find(params[:id])
        teacher.destroy!
        redirect_to teacher_path(current_teacher.id)
    end
end
