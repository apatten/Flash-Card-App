class FlashCardsController < ApplicationController
  def index
    @flash_cards = FlashCard.all
  end

  def show
    @flash_card = FlashCard.find(params[:id])
    @previous_flash_card = FlashCard.where("created_at > ? AND list_id = ?", @flash_card.created_at, @flash_card.list).order("created_at ASC").first
    @next_flash_card = FlashCard.where("created_at < ? AND list_id = ?", @flash_card.created_at, @flash_card.list).order("created_at DESC").first
  end

  def new
    @flash_card = FlashCard.new
  end

  def edit
    @flash_card = FlashCard.find(params[:id])
  end

  def create
    @flash_card = FlashCard.new(params[:flash_card])

    if @flash_card.save
      redirect_to flash_cards_path, notice: 'Flash card was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @flash_card = FlashCard.find(params[:id])

    if @flash_card.update_attributes(params[:flash_card])
      redirect_to flash_cards_path, notice: 'Flash card was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @flash_card = FlashCard.find(params[:id])
    @flash_card.destroy

    redirect_to flash_cards_url
  end
end
