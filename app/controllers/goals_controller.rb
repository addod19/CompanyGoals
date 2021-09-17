class GoalsController < ApplicationController
  def index
    @goals = Goal.all
    render json: @goals, status: :created
  end

  def show
    goal = Goal.find(params[:id])
    render json: goal.children, status: 200
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
    @goal_id = Goal.find(params[:id])
    p @goal_id
    if @goal_id.update!(goal_params)
      render json: { status: :created, goal: @goal_id }
    else
      render json: @goal_id.errors.full_messages, status: 401
    end
  end

  private

  def goal_params
    params.permit(:id, :title, :progress)
  end

  def set_goal
    @set_goal ||= Goal.find(params[:id])
  end
end
