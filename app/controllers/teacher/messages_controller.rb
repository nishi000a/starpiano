class Teacher::MessagesController < ApplicationController
  # before_action :authenticate_student!
  # before_action :authenticate_teacher!

    def create
      # if Entry.where(student_id: current_student.id, teacher_id: current_teacher.id, room_id: params[:message][:room_id]).present?
        @message = Message.new(message_params)
        if @message.save
            redirect_to teacher_room_path(@message.room_id)
        end
      # else
      #   redirect_back(fallback_location: teacher_root_path)
      # end
    end

    private
    def message_params
        params.require(:message).permit(:body, :room_id, :student_id).merge(teacher_id: current_teacher.id, teacher_flg: true)
    end

end
