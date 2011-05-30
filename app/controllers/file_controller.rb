class FileController < ApplicationController
  def create
    person = Person.create(:photo => params[:file])
    render :text => person.photo.url(:thumb)
  end
end
