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
    @goal_updated = Goal.update_parent
    p @goal_updated
    if @goal_updated
      render json: { goal: @goal_updated }
    else
      render json: { error: @goal_updated.errors.full_messages }
    end
    # @goal_id = Goal.find(params[:id])
    # if @goal_id.update!(goal_params)
    #   render json: { goal: @goal_id }
    # else
    #   render json: @goal_id.errors.full_messages, status: 401
    # end
  end

  private

  def goal_params
    params.permit(:id, :title, :progress)
  end

  def set_goal
    @set_goal ||= Goal.find(params[:id])
  end
end
