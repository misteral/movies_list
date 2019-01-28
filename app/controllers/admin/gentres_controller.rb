module Admin
  class GentresController < ApplicationController
    before_action :set_gentre, only: [:show, :edit, :update, :destroy]

    # GET /gentres
    # GET /gentres.json
    def index
      @gentres = Gentre.all
    end

    # GET /gentres/1
    # GET /gentres/1.json
    def show
    end

    # GET /gentres/new
    def new
      @gentre = Gentre.new
    end

    # GET /gentres/1/edit
    def edit
    end

    # POST /gentres
    # POST /gentres.json
    def create
      @gentre = Gentre.new(gentre_params)

      respond_to do |format|
        if @gentre.save
          format.html { redirect_to [:admin, @gentre], notice: 'Gentre was successfully created.' }
          format.json { render :show, status: :created, location: @gentre }
        else
          format.html { render :new }
          format.json { render json: @gentre.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /gentres/1
    # PATCH/PUT /gentres/1.json
    def update
      respond_to do |format|
        if @gentre.update(gentre_params)
          format.html { redirect_to [:admin, @gentre], notice: 'Gentre was successfully updated.' }
          format.json { render :show, status: :ok, location: @gentre }
        else
          format.html { render :edit }
          format.json { render json: @gentre.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /gentres/1
    # DELETE /gentres/1.json
    def destroy
      @gentre.destroy
      respond_to do |format|
        format.html { redirect_to admin_gentres_url, notice: 'Gentre was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_gentre
        @gentre = Gentre.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def gentre_params
        params.require(:gentre).permit(:name)
      end
  end
end
