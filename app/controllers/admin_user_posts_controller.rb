class AdminUserPostsController < ApplicationController
  before_action :authenticate_admin_user!
  before_action :set_admin_user_post, only: %i[ show edit update destroy ]

  # GET /admin_user_posts or /admin_user_posts.json
  def index
    @admin_user_posts = AdminUserPost.all
  end

  # GET /admin_user_posts/1 or /admin_user_posts/1.json
  def show
  end

  # GET /admin_user_posts/new
  def new
    @admin_user_post = AdminUserPost.new
  end

  # GET /admin_user_posts/1/edit
  def edit
  end

  # POST /admin_user_posts or /admin_user_posts.json
  def create
    @admin_user_post = AdminUserPost.new(admin_user_post_params)

    respond_to do |format|
      if @admin_user_post.save
        format.html { redirect_to @admin_user_post, notice: "Admin user post was successfully created." }
        format.json { render :show, status: :created, location: @admin_user_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_user_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_user_posts/1 or /admin_user_posts/1.json
  def update
    respond_to do |format|
      if @admin_user_post.update(admin_user_post_params)
        format.html { redirect_to @admin_user_post, notice: "Admin user post was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_user_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_user_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_user_posts/1 or /admin_user_posts/1.json
  def destroy
    @admin_user_post.destroy
    respond_to do |format|
      format.html { redirect_to admin_user_posts_url, notice: "Admin user post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_user_post
      @admin_user_post = AdminUserPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_user_post_params
      params.require(:admin_user_post).permit(:title, :body)
    end
end
