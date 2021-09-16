class GoalsController < ApplicationController

  def index
    @goals = Goal.all
  end

  def show
    if @set_goal
      render json: @set_goal
    else
      render json: @set_goal.errors.full_messages
    end
  end

  def update
    if @set_goal.update(goals_params)
      render json: { status: :created, goal: @set_goal }
    else
      render json: @set_goal.errors.full_messages, status: 401
    end

  end

  private

  def goal_params
    params.permit(:title, :progress)
  end

  def set_goal
    @set_goal ||= Goal.find(params[:id])
  end

end
