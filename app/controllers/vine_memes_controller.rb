class VineMemesController < ApplicationController
  # GET /vine_memes
  # GET /vine_memes.json
  def index
    @vine_memes = VineMeme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vine_memes }
    end
  end

  # GET /vine_memes/1
  # GET /vine_memes/1.json
  def show
    @vine_meme = VineMeme.find_by_token(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vine_meme }
    end
  end

  # GET /vine_memes/new
  # GET /vine_memes/new.json
  def new
    @vine_meme = VineMeme.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vine_meme }
    end
  end

  # GET /vine_memes/1/edit
  def edit
    @vine_meme = VineMeme.find(params[:id])
  end

  # POST /vine_memes
  # POST /vine_memes.json
  def create
    @vine_meme = VineMeme.new(vine_meme_params)

    respond_to do |format|
      if @vine_meme.save
        format.html { redirect_to @vine_meme, notice: 'Vine meme was successfully created.' }
        format.json { render json: @vine_meme, status: :created, location: @vine_meme }
      else
        format.html { render action: "new" }
        format.json { render json: @vine_meme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vine_memes/1
  # PATCH/PUT /vine_memes/1.json
  def update
    @vine_meme = VineMeme.find(params[:id])

    respond_to do |format|
      if @vine_meme.update_attributes(vine_meme_params)
        format.html { redirect_to @vine_meme, notice: 'Vine meme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vine_meme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vine_memes/1
  # DELETE /vine_memes/1.json
  def destroy
    @vine_meme = VineMeme.find(params[:id])
    @vine_meme.destroy

    respond_to do |format|
      format.html { redirect_to vine_memes_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def vine_meme_params
      params.require(:vine_meme).permit(:bottom, :token, :top, :url)
    end
end
