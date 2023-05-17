class ProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def show
        profile = Profile.find(params[:id])
        render json: profile,status: :ok 
    end
    
    def index
        profiles = Profile.all
        render json: profiles, each_serializer: ProfilesSerializer
    end

    def create
        profile = Profile.create!(profile_params)
        render json: profile, status: :created
    end
    
    def update
        profile = Profile.find(params[:id])
        profile.update(profile_params)
        render json: profile
    end
    
    def destroy
        profile = Profile.find(params[:id])
        profile.destroy
        head :no_content
    end
    
    private

    def render_not_found
        render json: { error: "Profile not found" }, status: :not_found
    end

    def render_unprocessable_entity(exception)
        render json: {errors: exception.record.errors.full_messages},status: :unprocessable_entity
    end

    def profile_params
        params.permit(:name, :email,:bio,:social_account, :cohort,:profession,:privacy, :profile_picture, :is_active)
    end
end
