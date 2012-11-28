class ChoresController < ApplicationController
  def index
    sleep 1
    @incomplete_chores = Chore.where(complete: false).order("created_at DESC")
    @complete_chores = Chore.where(complete: true).order("created_at DESC")
  end

  def new
    @chore = Chore.new
  end

  def create
    @chore = Chore.create!(params[:chore])
    respond_to do |format|
      format.html { redirect_to chore_url }
      format.js
    end
  end

  def update
    @chore = Chore.find(params[:id])
    @chore.update_attributes!(params[:chore])
    respond_to do |format|
      format.html { redirect_to chore_url }
      format.js
    end
  end

  def destroy
    @chore = Chore.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to chore_url }
      format.js
    end
  end
end
