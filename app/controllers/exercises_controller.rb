class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def edit
   @exercise = Exercise.find(params[:id])
 end

 def update
    @exercise= Exercise.find(params[:id])
    if @exercise.update(list_params)
      redirect_to exercises_path
    else
      render :edit
    end
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
        flash[:notice] = "Exercise successfully added!"
      redirect_to  exercises_path
    else
      render :new
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to exercises_path
  end

  private
  def exercise_params
    params.require(:exercise).permit(:description)
  end





end
