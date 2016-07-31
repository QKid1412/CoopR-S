class SettingController < ApplicationController
  before_action :set_config, only: [:display, :update]

  def display
    
    if @preference.nil?
    	@preference = Preference.new( { "user_id" => current_user.id } )
    	@preference.save()
      format.html { redirect_to "setting", notice: 'Preference created.' }
    else
    	@preference.update_geocode
      if @preference.has_location
        @lat = @preference.latitude
        @lng = @preference.longitude
      end
    end
  end

  def update
    if !@profile.nil?

    end
    if !@preference.nil?

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_config
      @me = current_user
      @profile = Profile.find_by user_id: current_user.id
      @preference = Preference.find_by user_id: current_user.id
    end
end
