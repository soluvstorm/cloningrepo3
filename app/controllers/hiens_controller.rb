class HiensController < ApplicationController
  before_action :set_hien, only: [:show, :edit, :update, :destroy]

  # GET /hiens
  # GET /hiens.json
  def index
    @hiens = Hien.all
  end

  # GET /hiens/1
  # GET /hiens/1.json
  def show
  end

  # GET /hiens/new
  def new
    @hien = Hien.new
  end

  # GET /hiens/1/edit
  def edit
  end

  # POST /hiens
  # POST /hiens.json
  def create
    @hien = Hien.new(hien_params)

    respond_to do |format|
      if @hien.save
        format.html { redirect_to @hien, notice: 'Hien was successfully created.' }
        format.json { render :show, status: :created, location: @hien }
      else
        format.html { render :new }
        format.json { render json: @hien.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hiens/1
  # PATCH/PUT /hiens/1.json
  def update
    respond_to do |format|
      if @hien.update(hien_params)
        format.html { redirect_to @hien, notice: 'Hien was successfully updated.' }
        format.json { render :show, status: :ok, location: @hien }
      else
        format.html { render :edit }
        format.json { render json: @hien.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hiens/1
  # DELETE /hiens/1.json
  def destroy
    @hien.destroy
    respond_to do |format|
      format.html { redirect_to hiens_url, notice: 'Hien was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hien
      @hien = Hien.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hien_params
      params.require(:hien).permit(:username)
    end
end
