class Student::MessagesController < ApplicationController
    before_action :authenticate_student!

    def create
        @message = Message.new(message_params)
        if @message.save
            redirect_to student_room_path(@message.room_id)
        end

    end

    private
    def message_params
        params.require(:message).permit(:body, :room_id, :teacher_id).merge(student_id: current_student.id, teacher_flg: false)
    end

end
