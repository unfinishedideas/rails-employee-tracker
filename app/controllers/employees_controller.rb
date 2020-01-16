class EmployeesController < ApplicationController

  def index
    # @division = Division.find(params[:division_id])
    @employees = Employee.all
    render :index
  end

  def new
    @employee = Employee.new()
    render :new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    @divisions = @employee.divisions
    @projects = @employee.projects
    render :edit
  end

  def show
    @employee = Employee.find(params[:id])
    @divisions = @employee.divisions
    @projects = @employee.projects
    @all_projects = Project.all
    render :show
  end



  def update
    @employee = Employee.find(params[:id])
    # binding.pry
    if (params[:employee].has_key?(:employee_name))
      @employee = Employee.find(params[:id])
      if @employee.update(employee_params)
        redirect_to employees_path
      else
        render :edit
      end
    else
      project = Project.find(params[:employee].fetch(:id))
      @employee.projects << project
      # render :show
      redirect_to employees_path
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  private
  def employee_params
    params.require(:employee).permit(:employee_name, :employee_id, :project_id)
  end

end
