class Teacher::RoomsController < ApplicationController
  before_action :authenticate_teacher!

  def show
    @room = Room.find(params[:id])
    @entry = Entry.find_by(room_id: @room.id)
      redirect_to teacher_root_path if @entry.teacher_id != current_teacher.id
      @message = Message.new
  end

end