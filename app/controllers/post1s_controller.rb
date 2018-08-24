class Post1sController < ApplicationController
  before_action :set_post1, only: [:show, :edit, :update, :destroy]

  # GET /post1s
  # GET /post1s.json
  def index
    @post1s = Post1.all
    @username=""
    
       unless session[:user_id].nil?
      @username = Username.find(session[:user_id]).username
      end
  end

  # GET /post1s/1
  # GET /post1s/1.json
  def show
  end

  # GET /post1s/new
  def new
    @post1 = Post1.new
  end
  
  def neww
       a = Admitwait.new
       a.name = @post1.name
       a.image = @post1.image
       a.title = @post1.title
       a.content = @post1.content
       a.file = @post1.file
       a.save
       
       redirect_to '/post1s'
  end

  # GET /post1s/1/edit
  def edit
  end

  # POST /post1s
  # POST /post1s.json
  def create
    @post1 = Post1.new(post1_params)

    respond_to do |format|
      if @post1.save
        format.html { redirect_to @post1, notice: 'Post1 was successfully created.' }
        format.json { render :show, status: :created, location: @post1 }
      else
        format.html { render :new }
        format.json { render json: @post1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post1s/1
  # PATCH/PUT /post1s/1.json
  def update
    respond_to do |format|
      if @post1.update(post1_params)
        format.html { redirect_to @post1, notice: 'Post1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @post1 }
      else
        format.html { render :edit }
        format.json { render json: @post1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post1s/1
  # DELETE /post1s/1.json
  def destroy
    @post1.destroy
    respond_to do |format|
      format.html { redirect_to post1s_url, notice: 'Post1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post1
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post1_params
      params.require(:post1 ).permit(:title, :content, :image )
    end
end
