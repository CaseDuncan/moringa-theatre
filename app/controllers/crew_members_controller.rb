class CrewMembersController < ApplicationController
    def index
        members = CrewMember.all
        render json: members
    end

    def show
        member = CrewMember.find_by(id:params[:id])
        if member
            render json: member, status: :ok
        else
            render json: {errors:"Member not found"}, status: :not_found
        end
    end
end
