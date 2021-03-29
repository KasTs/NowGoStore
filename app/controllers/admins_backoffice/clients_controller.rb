class AdminsBackoffice::ClientsController < AdminsBackofficeController
	before_action :set_client, only: [:show, :edit, :update, :destroy]

	def index
		@clients = Client.all
	end

	def show
	end

	def new
		@client = Client.new
	end

	def create
		@client = Client.new(client_params)

		if @client.save
			flash[:notice] = 'Client was created successfully!'
			redirect_to admins_backoffice_clients_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @client.update(client_params)
			flash[:notice] = 'Client was updated successfully!'
			redirect_to admins_backoffice_client_path(@client)
		else
			render 'edit'
		end
	end

	def destroy
		@client.destroy
		redirect_to admins_backoffice_clients_path
	end

	private

	def set_client
		@client = Client.find(params[:id])
	end

	def client_params
		params.require(:client).permit(:name, :email, :birthdate)
	end
end