class GoalsController < ApplicationController

  def index
    @goals = Goal.all
  end

  def show
    goal = Goal.find(params[:id])
    render json: goal.children, status: 200
    # if @set_goal
    #   render json: @set_goal
    # else
    #   render json: @set_goal.errors.full_messages
    # end
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
