class Student::RoomsController < ApplicationController
  before_action :authenticate_student!


  def create
    # 先生と生徒が一致する部屋を特定する
    entry = Entry.find_by(teacher_id: params[:teacher_id], student_id: current_student.id)

    # もし部屋が特定できなければ
    if entry.nil?
      # 部屋を作り部屋にリダイレクトする。
      room = Room.create
      Entry.create(room_id: room.id, teacher_id: params[:teacher_id], student_id: current_student.id)
      redirect_to student_room_path(room)
    else
      # 特定できたので、DMの部屋にリダイレクトする。
      redirect_to student_room_path(entry.id)
    end
  end

  def show
    @room = Room.find(params[:id])
    @entry = Entry.find_by(room_id: @room.id)
      redirect_to student_root_path if @entry.student_id != current_student.id
    @message = Message.new
  end

end