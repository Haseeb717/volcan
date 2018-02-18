require 'test_helper'

class ScalasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scala = scalas(:one)
  end

  test "should get index" do
    get scalas_url
    assert_response :success
  end

  test "should get new" do
    get new_scala_url
    assert_response :success
  end

  test "should create scala" do
    assert_difference('Scala.count') do
      post scalas_url, params: { scala: { finca_id: @scala.finca_id, harvested: @scala.harvested, paid: @scala.paid, qqt: @scala.qqt } }
    end

    assert_redirected_to scala_url(Scala.last)
  end

  test "should show scala" do
    get scala_url(@scala)
    assert_response :success
  end

  test "should get edit" do
    get edit_scala_url(@scala)
    assert_response :success
  end

  test "should update scala" do
    patch scala_url(@scala), params: { scala: { finca_id: @scala.finca_id, harvested: @scala.harvested, paid: @scala.paid, qqt: @scala.qqt } }
    assert_redirected_to scala_url(@scala)
  end

  test "should destroy scala" do
    assert_difference('Scala.count', -1) do
      delete scala_url(@scala)
    end

    assert_redirected_to scalas_url
  end
end
