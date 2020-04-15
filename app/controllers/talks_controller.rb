class TalksController < ApplicationController
  def index
  end
  def new
    @talk = Talk.new
  end
  def create
    Talk.create(content: params[:talk][:content])
  end
end
