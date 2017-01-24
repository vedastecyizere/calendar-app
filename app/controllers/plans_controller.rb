class PlansController < ApplicationController

  def index
    @plan1 = Plan.first
    render "index.html.erb"
  end

  def all_plans
    @all_plans = Plan.all  
    render "all_plans.html.erb" 
  end  

  def show 
    @plan = Plan.find_by(id: params[:id]) 
    render "show.html.erb"
  end  

  def new 
    end

  def create
    day = params[:day]
    activity = params[:activity]
    time = params[:time]
    plan = Plan.new({day: day, activity: activity, time: time})
    plan.save
  end

  def edit 
    @plan = Plan.find_by(id: params[:id])
  end 

  def update 
    @plan = Plan.find_by(id: params[:id])
    @plan.day = params[:day]
    @plan.activity = params[:activity]
    @plan.time = params[:time]
    @plan.save
  end 

  def destroy
    
    
  end

end
