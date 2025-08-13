class ChallengeTagsController < ApplicationController
  before_action :set_challenge_tag, only: %i[ show edit update destroy ]

  # GET /challenge_tags or /challenge_tags.json
  def index
    @challenge_tags = ChallengeTag.all
  end

  # GET /challenge_tags/1 or /challenge_tags/1.json
  def show
  end

  # GET /challenge_tags/new
  def new
    @challenge_tag = ChallengeTag.new
  end

  # GET /challenge_tags/1/edit
  def edit
  end

  # POST /challenge_tags or /challenge_tags.json
  def create
    @challenge_tag = ChallengeTag.new(challenge_tag_params)

    respond_to do |format|
      if @challenge_tag.save
        format.html { redirect_to @challenge_tag, notice: "Challenge tag was successfully created." }
        format.json { render :show, status: :created, location: @challenge_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @challenge_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /challenge_tags/1 or /challenge_tags/1.json
  def update
    respond_to do |format|
      if @challenge_tag.update(challenge_tag_params)
        format.html { redirect_to @challenge_tag, notice: "Challenge tag was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @challenge_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @challenge_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /challenge_tags/1 or /challenge_tags/1.json
  def destroy
    @challenge_tag.destroy!

    respond_to do |format|
      format.html { redirect_to challenge_tags_path, notice: "Challenge tag was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge_tag
      @challenge_tag = ChallengeTag.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def challenge_tag_params
      params.fetch(:challenge_tag, {})
    end
end
