class SchedulingsController < ApplicationController
  def index
    @schedules = Schedules.all
    @schedules = Schedules.new
  end

  def new
    @scheduling = Scheduling.new
  end

  def show
    @scheduling = Scheduling.find(params[:id])
  end

  def create
    Scheduling.create(scheduling_parameter)
    redirect_to schedulings_path
  end

  def destroy
    @scheduling = Scheduling.find(params[:id])
    @scheduling.destroy
    redirect_to schedulings_path, notice:"削除しました"
  end

  def edit
    @scheduling = Scheduling.find(params[:id])
  end

  def update
    @scheduling = Scheduling.find(params[:id])
    if @scheduling.update(scheduling_parameter)
      redirect_to schedulings_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def scheduling_parameter
    params.require(:scheduling).permit(:title, :content, :start_time, :place)
  end
end
