class FileController < ApplicationController

def create
  Person.create(:photo => params[:file])
end

end
