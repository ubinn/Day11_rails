class TrialsController < ApplicationController
  before_action :set_trial, only: [:show, :update, :edit, :destroy]
  
  def index
    @trial = Trial.all
  end

  def new
  end
  
  def create
    trial=Trial.create(hash_trials)
  
  redirect_to "/trials/#{trial.id}"
  end

  def edit
  end

  def update
   @trial.update(hash_trials)
   redirect_to "/trials/#{@trial.id}"
  end

  def show
  end
  
  def destroy
   @trial.destroy
   redirect_to '/trials '
  end
  
  def set_trial
   @trial = Trial.find(params[:id])
  end
  
  def hash_trials
     {title: params[:title], contents: params[:contents], name: params[:name]}
  end
end
