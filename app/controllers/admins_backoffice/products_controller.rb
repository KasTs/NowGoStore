class AdminsBackoffice::ProductsController < AdminsBackofficeController
	before_action :set_product, only: [:show, :edit, :update, :destroy]

	def index
		@products = Product.all
	end

	def show
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)

		if @product.save
			flash[:notice] = 'Product was created successfully!'
			redirect_to admins_backoffice_products_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @product.update(product_params)
			flash[:notice] = 'Product was updated successfully!'
			redirect_to admins_backoffice_product_path(@product)
		else
			render 'edit'
		end
	end

	def destroy
		@product.destroy
		redirect_to admins_backoffice_products_path
	end

	private

	def set_product
		@product = Product.find(params[:id])
	end

	def product_params
		params.require(:product).permit(:name, :description, :price_cents)
	end
end