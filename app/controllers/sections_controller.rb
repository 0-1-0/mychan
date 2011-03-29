class SectionsController < ApplicationController
  # GET /sections
  def index
    @sections = Section.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /sections/1
  # GET /sections/1.xml
  def show
    @sections = Section.all
    @section  = Section.find(params[:id])
    @stream   = Stream.new
    @post     = Post.new
    @streams  = @section.streams.
                joins("left join posts on streams.id = posts.stream_id").
                order("posts.created_at").
                group("posts.stream_id").
                reverse.
                paginate :page => params[:page], :per_page => 10

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @section }
    end
  end
end
