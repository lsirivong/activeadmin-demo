class BowlersController < InheritedResources::Base

  private

    def bowler_params
      params.require(:bowler).permit(:name, :team_id)
    end
end

