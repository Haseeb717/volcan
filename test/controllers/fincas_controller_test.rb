require 'test_helper'

class FincasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finca = fincas(:one)
  end

  test "should get index" do
    get fincas_url
    assert_response :success
  end

  test "should get new" do
    get new_finca_url
    assert_response :success
  end

  test "should create finca" do
    assert_difference('Finca.count') do
      post fincas_url, params: { finca: { altitiude_id: @finca.altitiude_id, finca: @finca.finca, notes: @finca.notes, region_id: @finca.region_id, region_id: @finca.region_id, soil_id: @finca.soil_id, variety_id: @finca.variety_id } }
    end

    assert_redirected_to finca_url(Finca.last)
  end

  test "should show finca" do
    get finca_url(@finca)
    assert_response :success
  end

  test "should get edit" do
    get edit_finca_url(@finca)
    assert_response :success
  end

  test "should update finca" do
    patch finca_url(@finca), params: { finca: { altitiude_id: @finca.altitiude_id, finca: @finca.finca, notes: @finca.notes, region_id: @finca.region_id, region_id: @finca.region_id, soil_id: @finca.soil_id, variety_id: @finca.variety_id } }
    assert_redirected_to finca_url(@finca)
  end

  test "should destroy finca" do
    assert_difference('Finca.count', -1) do
      delete finca_url(@finca)
    end

    assert_redirected_to fincas_url
  end
end
