require 'test_helper'

class TeamListingsControllerTest < ActionController::TestCase
  setup do
    @team_listing = team_listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_listing" do
    assert_difference('TeamListing.count') do
      post :create, team_listing: { event_id: @team_listing.event_id, lane_number: @team_listing.lane_number, team_id: @team_listing.team_id }
    end

    assert_redirected_to team_listing_path(assigns(:team_listing))
  end

  test "should show team_listing" do
    get :show, id: @team_listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_listing
    assert_response :success
  end

  test "should update team_listing" do
    patch :update, id: @team_listing, team_listing: { event_id: @team_listing.event_id, lane_number: @team_listing.lane_number, team_id: @team_listing.team_id }
    assert_redirected_to team_listing_path(assigns(:team_listing))
  end

  test "should destroy team_listing" do
    assert_difference('TeamListing.count', -1) do
      delete :destroy, id: @team_listing
    end

    assert_redirected_to team_listings_path
  end
end
