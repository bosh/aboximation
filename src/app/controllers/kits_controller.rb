class KitsController < ApplicationController
  before_filter :load_kits

  def create
    @kit = Kit.create!
    redirect_to [@kit]
  end

  def index
  end

  def show
    @kit = @kits.find(params[:kit_id])
  end

  def destroy
    @kit = @kits.find(params[:kit_id])
    @kit.destroy!
    redirect_to [:kits]
  end

  private
  def load_kits
    @kits = Kit.all
  end
end
