class ProductsController < ApplicationController

	def index
		@products = Product.all
		respond_to do |format|
			format.html # show.html.erb
			format.json { render :json => @posts }
		end
	end

	def edit
		@product = Product.find(params[:id])
		respond_to do |format|
			format.html # edit.html.erb
		end
	end

	def show
		@product = Product.find(params[:id])
		respond_to do |format|
			format.html # show.html.erb
			format.json { render :json => @report }
		end
	end

	def new
		@product = Product.new
		respond_to do |format|
			format.html # new.html.erb
			format.json { render :json => @product }
		end
	end

	def create
		@product = Product.new(params[:product])
		respond_to do |format|
			if @product.save
				format.html { redirect_to @product, notice: "Report successfully created"}
			else
				format.html { render action: "new" }
				format.json { render json: @product.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		@product = Product.find(params[:id])
		respond_to do |format|
			if @product.update_attributes(params[:product])
				format.html { redirect_to @product }
			end
		end
	end

end