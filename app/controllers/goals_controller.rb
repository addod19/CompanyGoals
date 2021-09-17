class GoalsController < ApplicationController
  def index
    @goals = Goal.all
    render json: @goals, status: :created
  end

  def show
    goal = Goal.find(params[:id])
    render json: goal, status: 200
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.save
    if @goal
      render json: @goal, status: :created
    else
      render json: { status: :unprocessible_entity, error: @goal.errors.full_messages }
    end
  end

  def update
    @goal = Goal.find(params[:id])
    if @goal.update(goal_params)
      render json: { goal: @goal, status: 'OK' }, status: :ok
    else
      render json: { error: 'Cannot update goal' }, status: :unprocessable_entity
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
