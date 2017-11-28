class FriendsController < ApplicationController

  def index
    @friends = Friend.all
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:id])
    if @friend.update(friend_params)
      redirect_to friend_path(@friend)
    else 
      render :edit
    end
  end

  def create
    @friend = Friend.new(friend_params)
    if @friend.save
      redirect_to friends_path
    else 
      render :new 
    end
  end
  
  def new 
    @friend = Friend.new
  end

  def destroy
    binding.pry
    # @friend = Friend.find(params[:id])
    # @friend.destroy
    # redirect_to friends_path 
  end

  private
  def friend_params
    params.require(:friend).permit(:name, :age, :hair_color, :eye_color, :phone, :alive, :gender)
  end

end
