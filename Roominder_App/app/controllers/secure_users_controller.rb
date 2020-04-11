class SecureUsersController < ApplicationController
  before_action :set_secure_user, only: [:show, :edit, :update, :destroy]

  # GET /secure_users
  # GET /secure_users.json
  def index
    @secure_users = SecureUser.all
  end

  # GET /secure_users/1
  # GET /secure_users/1.json
  def show
  end

  # GET /secure_users/new
  def new
    @secure_user = SecureUser.new
  end

  # GET /secure_users/1/edit
  def edit
  end

  # POST /secure_users
  # POST /secure_users.json
  def create
    @secure_user = SecureUser.new(secure_user_params)

    respond_to do |format|
      if @secure_user.save
        format.html { redirect_to @secure_user, notice: 'Secure user was successfully created.' }
        format.json { render :show, status: :created, location: @secure_user }
      else
        format.html { render :new }
        format.json { render json: @secure_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secure_users/1
  # PATCH/PUT /secure_users/1.json
  def update
    respond_to do |format|
      if @secure_user.update(secure_user_params)
        format.html { redirect_to @secure_user, notice: 'Secure user was successfully updated.' }
        format.json { render :show, status: :ok, location: @secure_user }
      else
        format.html { render :edit }
        format.json { render json: @secure_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secure_users/1
  # DELETE /secure_users/1.json
  def destroy
    @secure_user.destroy
    respond_to do |format|
      format.html { redirect_to secure_users_url, notice: 'Secure user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secure_user
      @secure_user = SecureUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def secure_user_params
      params.require(:secure_user).permit(:name, :username, :email, :password, :password_confirmation)
    end
end
