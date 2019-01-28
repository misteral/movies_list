require 'test_helper'

class GentresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gentre = gentres(:one)
  end

  test "should get index" do
    get gentres_url
    assert_response :success
  end

  test "should get new" do
    get new_gentre_url
    assert_response :success
  end

  test "should create gentre" do
    assert_difference('Gentre.count') do
      post gentres_url, params: { gentre: { name: @gentre.name } }
    end

    assert_redirected_to gentre_url(Gentre.last)
  end

  test "should show gentre" do
    get gentre_url(@gentre)
    assert_response :success
  end

  test "should get edit" do
    get edit_gentre_url(@gentre)
    assert_response :success
  end

  test "should update gentre" do
    patch gentre_url(@gentre), params: { gentre: { name: @gentre.name } }
    assert_redirected_to gentre_url(@gentre)
  end

  test "should destroy gentre" do
    assert_difference('Gentre.count', -1) do
      delete gentre_url(@gentre)
    end

    assert_redirected_to gentres_url
  end
end
