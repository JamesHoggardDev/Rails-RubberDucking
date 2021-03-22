class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    # @student = Student.new
    # @student.name = params[:name]
    # @student.mod = params[:mod]
    # @student.save
    @student = Student.create(student_params)
    if @student.valid?
      redirect_to student_path(@student.id)
    else 
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
    end  
  end

    def edit
       find_student
    end

  def update
     find_student
     @student.update(student_params)
     if @student.valid?
      redirect_to student_path(@student.id)
     else
      flash[:errors] = @student.errors.full_messages
      redirect_to edit_student_path
    end
  end


  
  private


  def student_params
      params.require(:student).permit(:name, :mod)
  end
 
  def find_student
    @student = Student.find(params[:id])
  end

end

