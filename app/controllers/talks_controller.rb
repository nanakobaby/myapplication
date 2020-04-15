class TalksController < ApplicationController
  def index
    @talks = Talk.all
  end
  def new
    @talk = Talk.new
  end
  def create
    @talk = Talk.new(talk_params)
    if @talk.save
      redirect_to talks_path, notice: "トークを作成しました！"
    else
      render :new
    end
  end
  def show
    @talk = Talk.find(params[:id])
  end
  private
  def talk_params
    params.require(:talk).permit(:content)
  end
end
