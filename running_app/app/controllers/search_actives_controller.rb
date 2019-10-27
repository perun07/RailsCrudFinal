class SearchActivesController < ApplicationController
  before_action :set_search_active, only: [:show, :edit, :update, :destroy]

  # GET /search_actives
  # GET /search_actives.json
  def index
    @search_actives = SearchActive.all
  end

  # GET /search_actives/1
  # GET /search_actives/1.json
  def show
  end

  # GET /search_actives/new
  def new
    @search_active = SearchActive.new
  end

  # GET /search_actives/1/edit
  def edit
  end

  # POST /search_actives
  # POST /search_actives.json
  def create
    @search_active = SearchActive.new(search_active_params)

    respond_to do |format|
      if @search_active.save
        format.html { redirect_to @search_active, notice: 'Search active was successfully created.' }
        format.json { render :show, status: :created, location: @search_active }
      else
        format.html { render :new }
        format.json { render json: @search_active.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_actives/1
  # PATCH/PUT /search_actives/1.json
  def update
    respond_to do |format|
      if @search_active.update(search_active_params)
        format.html { redirect_to @search_active, notice: 'Search active was successfully updated.' }
        format.json { render :show, status: :ok, location: @search_active }
      else
        format.html { render :edit }
        format.json { render json: @search_active.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_actives/1
  # DELETE /search_actives/1.json
  def destroy
    @search_active.destroy
    respond_to do |format|
      format.html { redirect_to search_actives_url, notice: 'Search active was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_active
      @search_active = SearchActive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_active_params
      params.require(:search_active).permit(:raceType, :location, :description)
    end
end
