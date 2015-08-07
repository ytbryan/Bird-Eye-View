class FrontPagesController < ApplicationController
  # before_action :authenticate, only: [:reveal_profile, :show_account_info]
  before_action :set_front_page, only: [:show, :edit, :update, :destroy]

  def main
    @user = User.new
  end
  # GET /front_pages
  # GET /front_pages.json
  def index
    @front_pages = FrontPage.all
  end

  # GET /front_pages/1
  # GET /front_pages/1.json
  def show
  end

  # GET /front_pages/new
  def new
    @front_page = FrontPage.new
  end

  # GET /front_pages/1/edit
  def edit
  end

  # POST /front_pages
  # POST /front_pages.json
  def create
    @front_page = FrontPage.new(front_page_params)

    respond_to do |format|
      if @front_page.save
        format.html { redirect_to @front_page, notice: 'Front page was successfully created.' }
        format.json { render :show, status: :created, location: @front_page }
      else
        format.html { render :new }
        format.json { render json: @front_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /front_pages/1
  # PATCH/PUT /front_pages/1.json
  def update
    respond_to do |format|
      if @front_page.update(front_page_params)
        format.html { redirect_to @front_page, notice: 'Front page was successfully updated.' }
        format.json { render :show, status: :ok, location: @front_page }
      else
        format.html { render :edit }
        format.json { render json: @front_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /front_pages/1
  # DELETE /front_pages/1.json
  def destroy
    @front_page.destroy
    respond_to do |format|
      format.html { redirect_to front_pages_url, notice: 'Front page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # def authenticate
    #     is the user in the database
    # end

    # Use callbacks to share common setup or constraints between actions.
    def set_front_page
      @front_page = FrontPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def front_page_params
      params[:front_page]
    end
end
