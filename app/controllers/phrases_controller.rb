class PhrasesController < ApplicationController

  def index
    @phrases = Phrase.all
  end

  def show
    @phrase = Phrase.find(params[:id])
  end

  def new
    @phrase = Phrase.new
  end

  def edit
    @phrase = Phrase.find(params[:id])
  end

  def create
    @phrase = Phrase.new(params[:phrase])

    if @phrase.save
      redirect_to phrases_url, notice: 'Phrase was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @phrase = Phrase.find(params[:id])

    if @phrase.update_attributes(params[:phrase])
      redirect_to @phrase, notice: 'Phrase was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @phrase = Phrase.find(params[:id])
    @phrase.destroy
    redirect_to phrases_url
  end
end