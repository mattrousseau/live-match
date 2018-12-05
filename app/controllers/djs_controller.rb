class DjsController < ApplicationController

  def index
    @djs = Dj.all.shuffle
  end

end
