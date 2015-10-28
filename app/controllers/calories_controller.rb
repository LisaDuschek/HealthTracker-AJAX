class CaloriesController < ApplicationController
  def new
    @food = Food.find(params[:food_id])
    @exercise = Exercise.find(params[:exercise_id])
    @calory = @food.calories.new
    @calory = @exercise.calories.new
  end

  def create
      @food = Food.find(params[:food_id])
      @exercise = Exercise.find(params[:exercise_id])
      @calory = @food.calories.new(calory_params)
      @calory = @exercise.calories.new(calory_params)
      if @calory.save
          flash[:notice] = "Calories successfully added!"
        redirect_to food_path(@calory.food)
      else
        render :new
      end
    end

  private
    def task_params
      params.require(:task).permit(:description)
    end




end
