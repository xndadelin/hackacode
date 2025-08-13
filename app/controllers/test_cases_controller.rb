class TestCasesController < ApplicationController
  before_action :set_test_case, only: %i[ show edit update destroy ]

  # GET /test_cases or /test_cases.json
  def index
    @test_cases = TestCase.all
  end

  # GET /test_cases/1 or /test_cases/1.json
  def show
  end

  # GET /test_cases/new
  def new
    @test_case = TestCase.new
  end

  # GET /test_cases/1/edit
  def edit
  end

  # POST /test_cases or /test_cases.json
  def create
    @test_case = TestCase.new(test_case_params)

    respond_to do |format|
      if @test_case.save
        format.html { redirect_to @test_case, notice: "Test case was successfully created." }
        format.json { render :show, status: :created, location: @test_case }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @test_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_cases/1 or /test_cases/1.json
  def update
    respond_to do |format|
      if @test_case.update(test_case_params)
        format.html { redirect_to @test_case, notice: "Test case was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @test_case }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @test_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_cases/1 or /test_cases/1.json
  def destroy
    @test_case.destroy!

    respond_to do |format|
      format.html { redirect_to test_cases_path, notice: "Test case was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_case
      @test_case = TestCase.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def test_case_params
      params.fetch(:test_case, {})
    end
end
