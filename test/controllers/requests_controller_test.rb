require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get todos_url, as: :json
    assert_response :success
  end

  test "should create request" do
    assert_difference('Todo.count') do
      post requests_url, params: { request: { nombre: @request.nombre, apellido: @request.apellido, cargo: @request.cargo } }, as: :json
    end

    assert_response 201
  end

  test "should show request" do
    get request_url(@request), as: :json
    assert_response :success
  end

  test "should update request" do
    patch request_url(@request), params: { request: { nombre: @request.nombre, apellido: @request.apellido, cargo: @request.cargo } }, as: :json
    assert_response 200
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete request_url(@request), as: :json
    end

    assert_response 204
  end
end
