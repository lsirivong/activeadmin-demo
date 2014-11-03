class ScoresController < InheritedResources::Base

  private

    def score_params
      params.require(:score).permit(:total, :bowler_id, :event_id)
    end
end

