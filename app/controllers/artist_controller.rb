class ArtistController < ApplicationController
  def index
  end

  def show
    @artist = Artist.find(params[:id].to_i)
  end

  def new
  end

  def edit
  end

    def create
      @artist = Artist.new
      @artist.name = params[:artist][:name]
      @artist.save
      if @artist.save
        redirect_to :action => "show", :id => @artist.id
      end
    end

  def update
  end

  def destroy
    @artist = Artist.destroy(params[:id].to_i)
    redirect_to artist_show path
  end

end
