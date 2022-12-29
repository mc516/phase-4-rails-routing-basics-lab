class StudentsController < ApplicationController
    def index
        render json: Student.all
      end
    
    def grades
        students = Student.all
        render json: students.order(grade: :desc)
    end

    def highest_grade
        students = Student.all
        render json: students.order(grade: :desc).first
    end
end
