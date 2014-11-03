class TeamListingsController < InheritedResources::Base

  private

    def team_listing_params
      params.require(:team_listing).permit(:team_id, :event_id, :lane_number)
    end
end

