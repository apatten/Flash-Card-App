require 'spec_helper'

describe FlashCardsController do

  describe "GET index" do
    it "assigns all flash_cards as @flash_cards" do
      flash_card = FlashCard.create! Factory.attributes_for(:flash_card)
      get :index
      assigns(:flash_cards).should eq([flash_card])
    end
  end

  describe "GET show" do
    it "assigns the requested flash_card as @flash_card" do
      flash_card = FlashCard.create! Factory.attributes_for(:flash_card)
      get :show, :id => flash_card.id
      assigns(:flash_card).should eq(flash_card)
    end
  end

  describe "GET new" do
    it "assigns a new flash_card as @flash_card" do
      get :new
      assigns(:flash_card).should be_a_new(FlashCard)
    end
  end

  describe "GET edit" do
    it "assigns the requested flash_card as @flash_card" do
      flash_card = FlashCard.create! Factory.attributes_for(:flash_card)
      get :edit, :id => flash_card.id
      assigns(:flash_card).should eq(flash_card)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FlashCard" do
        expect {
          post :create, :flash_card => Factory.attributes_for(:flash_card)
        }.to change(FlashCard, :count).by(1)
      end

      it "assigns a newly created flash_card as @flash_card" do
        post :create, :flash_card => Factory.attributes_for(:flash_card)
        assigns(:flash_card).should be_a(FlashCard)
        assigns(:flash_card).should be_persisted
      end

      it "redirects to the flash_cards list" do
        post :create, :flash_card => Factory.attributes_for(:flash_card)
        response.should redirect_to(flash_cards_url)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved flash_card as @flash_card" do
        # Trigger the behavior that occurs when invalid params are submitted
        FlashCard.any_instance.stub(:save).and_return(false)
        post :create, :flash_card => {}
        assigns(:flash_card).should be_a_new(FlashCard)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FlashCard.any_instance.stub(:save).and_return(false)
        post :create, :flash_card => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested flash_card" do
        flash_card = FlashCard.create! Factory.attributes_for(:flash_card)
        # Assuming there are no other flash_cards in the database, this
        # specifies that the FlashCard created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FlashCard.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => flash_card.id, :flash_card => {'these' => 'params'}
      end

      it "assigns the requested flash_card as @flash_card" do
        flash_card = FlashCard.create! Factory.attributes_for(:flash_card)
        put :update, :id => flash_card.id, :flash_card => Factory.attributes_for(:flash_card)
        assigns(:flash_card).should eq(flash_card)
      end

      it "redirects to the flash_cards list" do
        flash_card = FlashCard.create! Factory.attributes_for(:flash_card)
        put :update, :id => flash_card.id, :flash_card => Factory.attributes_for(:flash_card)
        response.should redirect_to(flash_cards_url)
      end
    end

    describe "with invalid params" do
      it "assigns the flash_card as @flash_card" do
        flash_card = FlashCard.create! Factory.attributes_for(:flash_card)
        # Trigger the behavior that occurs when invalid params are submitted
        FlashCard.any_instance.stub(:save).and_return(false)
        put :update, :id => flash_card.id, :flash_card => {}
        assigns(:flash_card).should eq(flash_card)
      end

      it "re-renders the 'edit' template" do
        flash_card = FlashCard.create! Factory.attributes_for(:flash_card)
        # Trigger the behavior that occurs when invalid params are submitted
        FlashCard.any_instance.stub(:save).and_return(false)
        put :update, :id => flash_card.id, :flash_card => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested flash_card" do
      flash_card = FlashCard.create! Factory.attributes_for(:flash_card)
      expect {
        delete :destroy, :id => flash_card.id
      }.to change(FlashCard, :count).by(-1)
    end

    it "redirects to the flash_cards list" do
      flash_card = FlashCard.create! Factory.attributes_for(:flash_card)
      delete :destroy, :id => flash_card.id
      response.should redirect_to(flash_cards_url)
    end
  end

end
