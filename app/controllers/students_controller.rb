class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students_by_grades = Student.all.order(grade: :desc)
        render json: students_by_grades
    end

    def highest_grade
        highest = Student.all.order(grade: :desc).first
        render json: highest
    end
end
