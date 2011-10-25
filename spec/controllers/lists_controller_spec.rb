require 'spec_helper'

describe ListsController do

  describe "GET index" do
    it "assigns all lists as @lists" do
      list = List.create! Factory.attributes_for(:list)
      get :index
      assigns(:lists).should eq([list])
    end
  end

  describe "GET show" do
    it "assigns the requested list as @list" do
      list = List.create! Factory.attributes_for(:list)
      get :show, :id => list.id
      assigns(:list).should eq(list)
    end
  end

  describe "GET new" do
    it "assigns a new list as @list" do
      get :new
      assigns(:list).should be_a_new(List)
    end
  end

  describe "GET edit" do
    it "assigns the requested list as @list" do
      list = List.create! Factory.attributes_for(:list)
      get :edit, :id => list.id
      assigns(:list).should eq(list)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new List" do
        expect {
          post :create, :list => Factory.attributes_for(:list)
        }.to change(List, :count).by(1)
      end

      it "assigns a newly created list as @list" do
        post :create, :list => Factory.attributes_for(:list)
        assigns(:list).should be_a(List)
        assigns(:list).should be_persisted
      end

      it "redirects to list index" do
        post :create, :list => Factory.attributes_for(:list)
        response.should redirect_to(lists_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved list as @list" do
        # Trigger the behavior that occurs when invalid params are submitted
        List.any_instance.stub(:save).and_return(false)
        post :create, :list => {}
        assigns(:list).should be_a_new(List)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        List.any_instance.stub(:save).and_return(false)
        post :create, :list => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested list" do
        list = List.create! Factory.attributes_for(:list)
        # Assuming there are no other lists in the database, this
        # specifies that the List created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        List.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => list.id, :list => {'these' => 'params'}
      end

      it "assigns the requested list as @list" do
        list = List.create! Factory.attributes_for(:list)
        put :update, :id => list.id, :list => Factory.attributes_for(:list)
        assigns(:list).should eq(list)
      end

      it "redirects to the list" do
        list = List.create! Factory.attributes_for(:list)
        put :update, :id => list.id, :list => Factory.attributes_for(:list)
        response.should redirect_to(list)
      end
    end

    describe "with invalid params" do
      it "assigns the list as @list" do
        list = List.create! Factory.attributes_for(:list)
        # Trigger the behavior that occurs when invalid params are submitted
        List.any_instance.stub(:save).and_return(false)
        put :update, :id => list.id, :list => {}
        assigns(:list).should eq(list)
      end

      it "re-renders the 'edit' template" do
        list = List.create! Factory.attributes_for(:list)
        # Trigger the behavior that occurs when invalid params are submitted
        List.any_instance.stub(:save).and_return(false)
        put :update, :id => list.id, :list => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested list" do
      list = List.create! Factory.attributes_for(:list)
      expect {
        delete :destroy, :id => list.id
      }.to change(List, :count).by(-1)
    end

    it "redirects to the lists list" do
      list = List.create! Factory.attributes_for(:list)
      delete :destroy, :id => list.id
      response.should redirect_to(lists_url)
    end
  end

end
