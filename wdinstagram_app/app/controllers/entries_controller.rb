class EntriesController < ApplicationController
	before_action :set_entry, only: [:show, :edit, :update, :destroy]

	def index
  	@entries = Entry.all
  end

  def show

  end

  def edit

  end

  def new
  	@entries = Entry.new
  end

  def create
  	@entry = Entry.build(joke_params)
  	if @entry.save
  		redirect_to entry_path(@entry)
  	else
  		render :new
  	end
  	
  end

  def update
  	@entry.update(entry_params)
  	if @entry.save
  		redirect_to entry_path(@entry)
  	else
  		render :edit
  	end
  end

  def destroy
  	@entry.destroy
  	redirect_to entries_path 
  end

  private

  def entry_params
  	params.require(:entry).permit(:author, :photo_url, :date_taken, :caption)
  end

  def set_entry
  	@entry = Entry.find(params[:id])
  end

end