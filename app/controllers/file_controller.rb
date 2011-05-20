class FileController < ApplicationController

def create
  logger.info params.inspect
  Person.create(:photo => params[:me])
end

end
