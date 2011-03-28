class StreamsController < ApplicationController
  # GET /posts/1
   # GET /posts/1.xml
   def show
     @stream  = Stream.find(params[:id])
     @sections = Section.all
     @section = Section.find(@stream.section_id)
     @post = Post.new

     respond_to do |format|
       format.html # show.html.erb
       format.xml  { render :xml => @stream }
     end
   end
   
   def create
     @stream = Stream.new(params[:stream])

     respond_to do |format|
       if @stream.save
         @stream.posts.create(params[:post])
         format.html { redirect_to(@stream.section, :notice => 'Stream was successfully created.') }
       else
         format.html { render :action => "show" }
       end
     end
   end
  

end
