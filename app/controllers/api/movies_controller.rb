module Api
  class MoviesController < ApiController
    before_action :set_movie, only: %i[show edit update destroy favorite unfavorite]
    before_action :set_user
    # GET /movies
    # GET /movies.json
    def index
      return @movies = Movie.all unless @user

      @movies = @user.movies
    end

    # GET /movies/1
    # GET /movies/1.json
    def show
    end

    # GET /movies/new
    def new
      @movie = Movie.new
    end

    # GET /movies/1/edit
    def edit
    end

    def favorite
      @user.movies << @movie unless @user.movies.include?(@movie)
      @movies = @user.movies
    end

    def unfavorite
      @user.movies = @user.movies - [@movie]
      @movies = @user.movies
    end

    # POST /movies
    # POST /movies.json
    def create
      @movie = Movie.new(movie_params)

      respond_to do |format|
        if @movie.save
          format.json { render :show, status: :created, location: @movie }
        else
          format.json { render json: @movie.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /movies/1
    # PATCH/PUT /movies/1.json
    def update
      respond_to do |format|
        if @movie.update(movie_params)
          format.json { render json: @movie.to_json }
        else
          format.json { render json: @movie.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /movies/1
    # DELETE /movies/1.json
    def destroy
      @movie.destroy
      respond_to do |format|
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id] || params[:movie_id])
    end

    def set_user
      return unless params[:user_id]

      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:name, :year, :thumbnail, :director, :main_star, :description)
    end
  end
end
