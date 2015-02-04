class DogsController < ApplicationController


  def new
    @dog = Dog.new
    @user = User.find(params[:user_id])
  end

    # Actions needed to create a dog?
    #
    def create
      @dog = Dog.new(dog_params)
      @dog.user_id = params[:user_id]

      if @dog.save
      redirect_to users_path, notice: 'You created a dog'
      else
        render users_path(@user)
      end
    end

private
  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :user_id)

end

end
