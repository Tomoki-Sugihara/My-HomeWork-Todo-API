class SubjectListsController < ApplicationController
   def index
      @subjects = SubjectList.all
      render json: @subjects
   end
   def create
      @subject = SubjectList.new(key: params[:key], title: params[:title])
      @subject.save
      render json: @subject
   end
end
