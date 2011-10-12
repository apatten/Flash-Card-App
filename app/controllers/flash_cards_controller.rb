class FlashCardsController < ApplicationController

  def index
    redirect_to(flash_card_path(Phrase.order("created_at DESC").first))
  end

  def show
    @phrase = Phrase.find(params[:id])
    @previous_phrase = Phrase.where("created_at > ?", @phrase.created_at).order("created_at ASC").first
    @next_phrase = Phrase.where("created_at < ?", @phrase.created_at).order("created_at DESC").first
  end

end
