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

   def perge
      @subjects = SubjectList.all
      @subjects.each do |subject|
         subject.destroy
      end
      if @subjects == []
         render json: {status: "success"}
      end
   end
end
