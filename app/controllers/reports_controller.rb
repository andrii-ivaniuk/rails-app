class ReportsController < ApplicationController
  def index
    @categories = Category.all.map { |category| [category.name, category.id] } 
  end

  def report
    if params[:button] == 'by_category'
      @operations = Category.find(params[:category_id]).operations
      render "report_by_category"
    elsif params[:button] == 'by_dates'
      @operations = Operation.where(odate: params[:from]..params[:to])
      render "report_by_dates"
    end
  end

end
