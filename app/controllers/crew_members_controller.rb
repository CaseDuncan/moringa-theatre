class CrewMembersController < ApplicationController
    def index
        members = CrewMember.all
        render json: members
    end
end
