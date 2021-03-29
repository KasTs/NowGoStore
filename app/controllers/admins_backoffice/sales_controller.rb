class AdminsBackoffice::SalesController < AdminsBackofficeController
	before_action :set_sale, only: [:show, :edit, :update, :destroy]

	def index
		@sales = Sale.all
	end

	def show
	end

	def new
		@sale = Sale.new
	end

	def create
		@client = Client.find(sale_params[:client_id])
		@sale = @client.sales.build
		sale_params[:product_ids].each do |product_id| 
			
			unless product_id.empty?
				@product = Product.find(product_id.to_i)
				@sale.products << @product
			end
		end

		
		if @sale.save
			flash[:notice] = 'Sale was created successfully!'
			redirect_to admins_backoffice_sales_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @sale.update(sale_params)
			flash[:notice] = 'Sale was updated successfully!'
			redirect_to admins_backoffice_sale_path(@sale)
		else
			render 'edit'
		end
	end

	def destroy
		@sale.destroy
		redirect_to admins_backoffice_sales_path
	end

	private

	def set_sale
		@sale = Sale.find(params[:id])
	end

	def sale_params
		params.require(:sale).permit(:client_id, :product_ids =>[])
	end
end