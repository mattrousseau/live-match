class DjsController < ApplicationController
  before_action :set_dj, only: [:show]

  def index
    @djs = Dj.all.shuffle
  end

  def show
  end

  private

  def set_dj
    @dj = Dj.find(params[:id])
  end

end
