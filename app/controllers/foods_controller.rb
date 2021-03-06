class FoodsController < ApplicationController

  def index
    @foods = Food.all
    @food = Food.new
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
     @food = Food.new
   end

   def edit
     @food = Food.find(params[:id])
   end

   def update
     @food= Food.find(params[:id])
     if @food.update(list_params)
       redirect_to foods_path
     else
       render :edit
     end
   end


  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to  foods_path
      flash[:notice] = "New food successfully added!"
    else
      render :new
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end

private
def food_params
  params.require(:food).permit(:name)
end






end
