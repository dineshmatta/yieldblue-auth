class EditorsController < ApplicationController

	def create
		puts "HHHHHHHHHHH\n"
		puts sign_up_params.inspect
	    build_resource(sign_up_params)
	    if resource.save
	      	redirect_to admin_editors_path
	    else
	    	puts "KKKKKKKKKK\n"
	      	clean_up_passwords resource
	      	respond_with resource
	    end
  	end
end
