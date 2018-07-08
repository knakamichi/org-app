class StuffsController < ApplicationController
  before_action :set_stuff, only: [:show, :edit, :update, :destroy]

  # GET /stuffs
  # GET /stuffs.json
  def index
    @stuffs = Stuff.all
  end

  # GET /stuffs/new
  def new
    @stuff = Stuff.new
  end

  def edit
  end

  # POST /stuffs
  # POST /stuffs.json
  # def create
  #   @stuff = Stuff.new(stuff_params)
  #   respond_to do |format|
  #     if @stuff.save
  #       flash[:success] = "道具を追加しました。"
  #       redirect_to current_user
  #     else
  #       render 'static_pages/home'
  #       format.json { render json: @stuff.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def create
    @stuff = current_user.stuffs.build(stuff_params)
    if @stuff.save
      flash[:success] = "道具を追加しました。"
      redirect_to current_user
    else
      render 'static_pages/home'
      format.json { render json: @stuff.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /stuffs/1
  # PATCH/PUT /stuffs/1.json
  # see rails tutorial section 14.2.5 for explanation
  def update
    respond_to do |format|
      if @stuff.update(stuff_params)
        format.html { redirect_to current_user, notice: '道具情報を更新しました' }
        # format.json { render :show, status: :ok, location: @stuff }
      else
        format.html { render :edit }
        format.json { render json: @stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stuffs/1
  # DELETE /stuffs/1.json
  def destroy
    @stuff.destroy
    respond_to do |format|
      format.html { redirect_to stuffs_url, notice: 'Stuff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stuff
      @stuff = Stuff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stuff_params
      params.require(:stuff).permit(:name, :sub_name1, :sub_name2, :description1, :description2, :description3, :description4, :user_id, :image)
    end

    def duplicate_values
      max = self.size
      self.reverse_each.with_index do |e,i|
        break if i == max-1 # N-1回比較
          @dup_values = @dup_values ?  @dup_values & self[i] : self[i] & e
        end
      @dup_values
    end
end
