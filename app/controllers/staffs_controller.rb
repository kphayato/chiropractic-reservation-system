class StaffsController < ApplicationController
  def index
    @staffs = Staff.all
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to @staff, notice: "スタッフを追加しました。"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @staff = Staff.find(params[:id])
  end

  def update
    @staff = Staff.find(params[:id])
    if @staff.update(staff_params)
      redirect_to @staff, notice: "スタッフ情報を更新しました。"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @staff = Staff.find(params[:id])
    @staff.destroy
    redirect_to staffs_path, notice: "スタッフを削除しました。"
  end

  private

  def staff_params
    params.require(:staff).permit(:name, :role, :store, :work_hours)
  end
end